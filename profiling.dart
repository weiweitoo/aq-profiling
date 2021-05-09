void main() {
  
  List profiling(List question) {
    int total = question.toList().length;
    double explorer = (question.where((c) => c == 0).toList().length)/total;
    double killer = (question.where((c) => c == 1).toList().length)/total;
    double achiever = (question.where((c) => c == 2).toList().length)/total;
    
    print([explorer/total, killer/total, achiever/total]);
    
    if (explorer > killer && explorer > achiever){
      if(killer > achiever){
        // explorer, killer, achiever
        return ["e", "k", "a"];
      }
      else{
        // explorer, achiever, killer
        return ["e", "a", "k"];
      }
    }
    else if (killer > explorer && killer > achiever){
      if(explorer > achiever){
        // killer, explorer, achiever
        return ["k", "e", "a"];
      }
      else{
        // killer, achiever, explorer
        return ["k", "a", "e"];
      }
    }
    else if (achiever > explorer && achiever > killer){
      if(explorer > killer){
        // achiever, explorer, killer
        return ["a", "e", "k"];
      }
      else{
        // achiever, killer, explorer
        return ["a", "k", "e"];
      }
    }
    else{
      // default
      return ["k", "k", "k"];
    }
  }
  
  List inputs = [0,1,1,2,2,2,1,2,2];
  List x = profiling(inputs);
  print(x);
}
