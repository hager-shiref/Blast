import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:untitled/model/model.dart';
class Blast{
String blast= BlastModel['Chromosome'];
  static double alignment_score=0;
  //compare single base
int SingleBaseCompare(String seq1,String seq2,int i,int j){
  if(seq1[i] == seq2[j])return 2;
  else return -1;
}
List ?SMalignment(String seq1,String seq2){
    int m=seq1.length;
    int n=seq2.length;
   int g=-3;
   List matrix=[];
   for(int i=0;i<m;i++){
     List tmp=[];
     for(int j=0;j<n;j++){
       tmp.add(0);
     }
     matrix.add(tmp);
     }
    for (int sii=0;sii<m;sii++){
      matrix[sii][0]=sii*g;
    }
for (int sjj=0;sjj<n;sjj++){
      matrix[sjj][0]=sjj*g;
    }
  for(int siii=0;siii<m;siii++){
      for(int sjjj=0;sjjj<n;sjjj++){
     matrix[siii][sjjj] =([matrix[siii-1][sjjj] + g , matrix[siii - 1][sjjj - 1] + SingleBaseCompare(seq1,seq2,siii, sjjj), matrix[siii][sjjj-1] + g]).reduce((value, element) => value>element?value:element);
      }  
  }
  List sequ1 = [seq1[m-1]];
  List  sequ2 = [seq2[n-1]];
  while(m>1 && n>1){
    List max1=[matrix[m-1][n-2], matrix[m-2][n-2], matrix[m-2][n-1]].reduce((value, element) =>value>element?value:element );
    List max2=[matrix[m-1][n-2], matrix[m-2][n-2], matrix[m-2][n-1]].reduce((value, element) => value>element?value:element);
    if(max1==matrix[m-2][n-2]){
       m -= 1;
        n -= 1;
        sequ1.add(seq1[m-1]);
         sequ2.add(seq2[n-1]);
    }
    else if(max2==matrix[m-1][n-2]){
       n -= 1;
       sequ1.add('-');
      sequ2.add(seq2[n-1]);
    }
    else{
       m -= 1;
       sequ1.add(seq1[m-1]);
      sequ2.add('-');
    }
    for(var i=0;i<sequ1.length/2;i++){
        var temp = sequ1[i];
        sequ1[i] = sequ1[sequ1.length-1-i];
        sequ1[sequ1.length-1-i] = temp;
        return sequ1;
    }
    for(var i=0;i<sequ2.length/2;i++){
        var temp = sequ2[i];
        sequ2[i] = sequ2[sequ2.length-1-i];
        sequ2[sequ2.length-1-i] = temp;
        return sequ2;
    }
   String align_seq1 = sequ1.join('');
   String align_seq2=sequ2.join('') ;
   double  align_score = .0;
   for(int k=0;k<align_seq1.length;k++){
     if(align_seq1[k]==align_seq2[k]){
       align_score += 1; 
     }
   }
 align_score=(align_score)/align_seq1.length;
      alignment_score=align_score*100;
    List aligns=[align_seq1 , align_seq2, align_score];
 return aligns;
  }
}
display(String seque1,String seque2){
  int le=60;
  while(seque1.length>=0){
     Text('sequence1: ');
     for(int a=seque1[le-40] as int;a<le;a++){
       Text('$a');
     }
     Text("\n");
        Text('           ');
    for(int k=le-40;k<le;k++){
       if (seque1[k] == seque2[k])  Text('|');
            else Text(' ');
    }
    Text("\n");
    Text('sequence2: ');
    for(int b=seque2[le-40] as int;b<le;b++){
       Text('$b');
    }
    Text("\n");
     le += 40;
     if(seque2.length>le-40){
       Text('sequence1: ');
       for(int a=seque2[le-40] as int;a<seque2.length;a++){
          Text('$a');
       }
       Text("\n");
        Text('           ');
        for(int k=seque1[le-40] as int;k<seque1.length;k++){
          if(seque1[k]==seque2[k]){
            Text('|');
          }
          else{Text(' ');}
          Text("\n");
        Text('sequence2: ');
        for(int b=seque2[le-40] as int;b<seque2.length;b++){
          Text('$b');
        }
         Text("\n");
        }
     }
  }
}
//transform base to numeric value
List wordToNum(String word){
   List h=[];
   for(int w=0;w<word.length;w++){
     if(word[w]=='A'){
       h.add(1);
     }
     else if(word[w]=='C'){
       h.add(2);
     }
     else if(word[w]=='G'){
       h.add(3);
     }
     else { h.add(4);}
   }
 return h;
 }
//transform word with 11 bases to its index
num wordToIndex(String word,int wordlen){
  num tmp=0;
  List wordnum=wordToNum(word); 
  for(int i=0; i<wordnum.length;i++){
    int v=wordnum[i];
    num p=pow(4,(wordlen-i));
    tmp+=(v-1)* p;
  }  
  return tmp;
}
// List getWordsPosition(String word){
//   // assert (word.length==11);
//    num seekIndex=wordToIndex(word,11-1);
//    List positions=<Map>[];
  
//    for(int chrNames=0;chrNames<blast.length;chrNames++){

//      String chrSeq=blast;
//       String position= chrSeq.substring((seekIndex as int) ,1) ;
//       try{
//           positions.add(position[0][-1].split(','));
//       }
//       catch (e){
//           positions.add([]);
//       }
      
//    }
//    return positions;
  
//  }
 
 String extractSeq(int chrIndex,int pos,int lenght)
 {
    pos=pos+(pos/60).floor();
     String chr=blast;
    return chr.toString().replaceAll('\n','');
    
 }
  int countOccurrencesUsingLoop(List list, String element) {
           if (list == null || list.isEmpty) {
             return 0;
            }
          int count = 0;
          for (int i = 0; i < list.length; i++) {
          if (list[i] == element) {
            count++;
           }
         }
         return count;
        }
 blastAlgorithm(String querySeq){
    int i=0;
    List query_words=[];
    int querySeqLenght=querySeq.length;
    int wordsLenght=querySeqLenght-11+1;
    while (i<wordsLenght)
    {
        query_words.add(querySeq[i][i+11]);
        i+=1; 
    }
    List words_position=[];
    for ( String word in query_words){
      words_position.add('Chromosome');
    }
    for(int chr_index =0;chr_index<24;chr_index++){
      for (int word_index=0; word_index<wordsLenght;word_index++){
        for(int pos=0;pos>words_position[word_index][chr_index];pos++){
          words_position[word_index][chr_index][pos] +=wordsLenght-word_index -1;
        }
         List words_position_correct =[];
        while(word_index<wordsLenght){
          words_position_correct +=words_position[word_index][chr_index];
        }
      int A=  countOccurrencesUsingLoop(words_position_correct, 'A');
      int G=  countOccurrencesUsingLoop(words_position_correct, 'G');
      int T=  countOccurrencesUsingLoop(words_position_correct, 'T');
      int C=  countOccurrencesUsingLoop(words_position_correct, 'C');
       List words_positions_corrects_count=[{
          "A":A,
          "G":G,
          "C":C,
          "T":T
        }];
        List finded_positions=[];
        for (int count=0;count<words_positions_corrects_count.length;count++){
          if (words_positions_corrects_count[count]>5){
            finded_positions.add(count);
          }
          if (finded_positions !=null){
              for(int finded_position=0;finded_position<finded_positions.length;finded_position++){
                int candidate_seq_pos = finded_position - querySeq.length + 11 - 5;
                int candidate_seq_length = querySeq.length + 11;
                dynamic candidate_sequence = extractSeq(chr_index,candidate_seq_pos,candidate_seq_length);
                 List  i_start_indexs = [];
                 for (int i_start=0;i_start<15;i_start++)
                 {
                   var score = SMalignment(candidate_sequence,querySeq);
                    i_start_indexs.add(score![0]);
                     i_start_indexs.add(score[1]);
                      i_start_indexs.add(score[2]);
                      
                 }
                 var largest_start = i_start_indexs[0];
                      int  i_start=0;
                    for (var i = 0; i < i_start_indexs.length; i++) {
      
                      if (i_start_indexs[i] > largest_start) {
                         largest_start = i_start_indexs[i];
                             i_start=i;
                       }
                     }
                    List i_end_indexs = [];
                    for(int i_end=1;i<16;i++){
                      var score=SMalignment(candidate_sequence,querySeq);
                       i_end_indexs.add(score);
                    }
                      var largest_end = i_end_indexs[0];
                      int  i_end=0;
                    for (var i = 0; i < i_end_indexs.length; i++) {
      
                      if (i_end_indexs[i] > largest_end) {
                         largest_end = i_end_indexs[i];
                             i_end=i+1;
                       }
                     } 
                      candidate_sequence= candidate_sequence.sublist(i_start , -i_end);
                     List <dynamic>  align_seq = SMalignment(candidate_sequence,querySeq)!;

                    return Text('${display(align_seq[0], align_seq[1])}');

              }

          }
        }
      }
    }
    
 }

}
 