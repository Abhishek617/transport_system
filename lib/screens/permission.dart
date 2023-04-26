import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/permission2.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class Permission extends StatefulWidget {
  const Permission({Key? key}) : super(key: key);

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text(AppStrings.kTransport,style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),),
            SizedBox(height:15,),
            Text(AppStrings.kNeedsPermission,style: TextStyle(fontSize: 25, color: Colors.black), ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.location_on,size:25,color: Colors.blue,),
                SizedBox(width: 8,),
                Text(AppStrings.kStoreLocation,style: TextStyle(fontSize:22, color: Colors.blue),)
              ],
            ),
            SizedBox(height: 10,),
            Text(AppStrings.kStoreLocationDesc,style: TextStyle(fontSize:15, color: Colors.grey[600]),),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.call,size:25,color: Colors.blue  ),
                SizedBox(width: 8,),
                Text(AppStrings.kManageCalls,style: TextStyle(fontSize:22, color: Colors.blue),)
              ],
            ),
            SizedBox(height: 10,),
            Text(AppStrings.kManageCallsDesc,style: TextStyle(fontSize:15, color: Colors.grey[600]),),
            SizedBox(height: 20,),

            Row(
              children: [
                Icon(Icons.call,size:25,color: Colors.blue  ),
                SizedBox(width: 8,),
                Text(AppStrings.kStoreCallLogs,style: TextStyle(fontSize:22, color: Colors.blue),)
              ],
            ),
            SizedBox(height: 10,),
            Text(AppStrings.kStoreCallLogsDesc,style: TextStyle(fontSize:15, color: Colors.grey[600]),),
            SizedBox(height: 15,),
            Divider(thickness:1.5,),
            
            Text(AppStrings.kPolicy,style: TextStyle(fontSize:15, color: Colors.grey[600]), ),
            SizedBox(height: 10,),
            Text(AppStrings.kAgree,style: TextStyle(fontSize:15, color: Colors.grey[600]),),
            SizedBox(height: 20,),

            AppButtons().kElevatedButton(title: AppStrings.kAGREE, context: context
            , onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Location_Icon()),);
                }),
            SizedBox(height: 10,),
            Container(
                height: 50,
                width: 330,
                child: Center(
                  child: Text(AppStrings.kDisagree,
                    style: TextStyle(color: Colors.grey[700],fontSize: 23),),
                ))
          ],

        ),
      ),
    );
  }
}
