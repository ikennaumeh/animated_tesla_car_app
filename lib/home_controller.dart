import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{
  int selectedBottomTab = 0;
  int temp = 0;
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;
  bool isCoolSelected = true;

  void onBottomNavigationTabChange(int index){
    selectedBottomTab = index;
    notifyListeners();
  }


  void updateRightDoorLock(){
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }
  void updateLeftDoorLock(){
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }
  void updateBonnetLock(){
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }
  void updateTrunkLock(){
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }

  void updateCoolSelectedTab(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  void incrementTemp(){
    temp++;
    notifyListeners();
  }

  void decrementTemp(){
    if(temp > 0){
      temp--;
      notifyListeners();
    }
  }

}