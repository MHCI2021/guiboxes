
import 'package:flutter/material.dart';


class ControlPanel extends StatefulWidget {
  @override
  _ControlPanelState createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 200,
      decoration: BoxDecoration(
        border:Border.all(color:Colors.black),
         color: Colors.grey,
      ),
    child: Column(
      children:[
        ModeSelection(),
        BorderColorSelection(),
        BorderWidthSlider(),
        FillColorSelection(),
      ]
    ),
    );
  }
}

class ModeSelection extends StatelessWidget {
  final String currentMode;
  final Function(String) changeMode;

  const ModeSelection({Key key, this.currentMode, this.changeMode}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      child: Column(children: [
        MenuText("Mode:"),
        Row(children: [
          Container(
            height:40,
            width:50,
            color:Colors.blue
          )
        ],)
      ],),
    );
  }
}

class BorderColorSelection extends StatelessWidget {
  final Function(Color) changeBorderColor;

  const BorderColorSelection({Key key, this.changeBorderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        MenuText("Mode:"),
        Row(children: [
          Container(
            height:40,
            width:50,
            color:Colors.blue
          )
        ],)
      ],),
    );
  }
}
class BorderWidthSlider extends StatelessWidget {
  final Function(double) changeBorderWidth;

  const BorderWidthSlider({Key key, this.changeBorderWidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        MenuText("Border Width:"),
        Row(children: [
          Container(
            height:40,
            width:50,
            color:Colors.blue
          )
        ],)
      ],),
    );
  }
}

class FillColorSelection extends StatelessWidget {
  final Color selectedColor;
  final Function(Color) changeFillColor;

  const FillColorSelection({Key key,this.selectedColor, this.changeFillColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        MenuText("Fill Color:"),
        Row(children: [
          Container(
            height:40,
            width:50,
            color:Colors.blue
          )
        ],)
      ],),
    );
  }
}
class OpacitySlider extends StatelessWidget {
  final Function(double) changeOpacity;

  const OpacitySlider({Key key, this.changeOpacity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        MenuText("Border Width:"),
        Row(children: [
          Container(
            height:40,
            width:50,
            color:Colors.blue
          )
        ],)
      ],),
    );
  }
}

class MenuText extends StatelessWidget {
  final String text;

  MenuText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color:Colors.black,
        fontSize:20.0
      ),
    );
  }
}




// const Modes = ({
//   currMode,
//   changeCurrMode,
//   currBorderColor,
//   currFillColor,
// }) => {
//   return (
//     <div className="Control">
//       <h3>Mode:</h3>
//       <div className="Modes">
//         <div
//           className={["Mode", currMode === "select" ? "Active" : null].join(
//             " "
//           )}
//           onClick={() => changeCurrMode("select")}
//         >
//           <img src={CursorImg} alt="cursor" />
//         </div>
//         <div
//           className={["Mode", currMode === "line" ? "Active" : null].join(" ")}
//           onClick={() => changeCurrMode("line")}
//         >
//           <img src={LineImg} alt="line" />
//         </div>
//         <div
//           className={["Mode", currMode === "rect" ? "Active" : null].join(" ")}
//           onClick={() => changeCurrMode("rect")}
//         >
//           <div
//             style={{
//               backgroundColor: currFillColor,
//               width: 36,
//               height: 20,
//               border: `2px solid ${currBorderColor}`,
//             }}
//           ></div>
//         </div>
//         <div
//           className={["Mode", currMode === "ellipse" ? "Active" : null].join(
//             " "
//           )}
//           onClick={() => changeCurrMode("ellipse")}
//         >
//           <div
//             style={{
//               backgroundColor: currFillColor,
//               width: 36,
//               height: 20,
//               border: `2px solid ${currBorderColor}`,
//               borderRadius: "50%",
//             }}
//           ></div>
//         </div>
//       </div>
//     </div>
//   );
// };

// const ColorPicker = ({ title, currColor, setCurrColor, conflictColors }) => {
//   return (
//     <div className="Control">
//       <h3>{title}</h3>
//       <div className="Modes">
//         {supportedColors.map((color, idx) => (
//           <div
//             key={idx}
//             className={["Mode", currColor === color ? "Active" : null].join(
//               " "
//             )}
//             onClick={() => {
//               if (
//                 !(
//                   color === "transparent" &&
//                   conflictColors.includes("transparent")
//                 )
//               )
//                 setCurrColor(color);
//             }}
//           >
//             <div
//               className="ColorBlock"
//               style={{
//                 backgroundColor: color,
//                 border: color === "transparent" ? "none" : null,
//                 opacity:
//                   color === "transparent" &&
//                   conflictColors.includes("transparent")
//                     ? 0.3
//                     : null,
//                 cursor:
//                   color === "transparent" &&
//                   conflictColors.includes("transparent")
//                     ? "not-allowed"
//                     : null,
//               }}
//             >
//               {color === "transparent" && "None"}
//             </div>
//           </div>
//         ))}
//       </div>
//     </div>
//   );
// };

// const BorderColor = ({
//   currMode,
//   currBorderColor,
//   changeCurrBorderColor,
//   currFillColor,
// }) => {
//   return (
//     <ColorPicker
//       title={"Border color:"}
//       currColor={currBorderColor}
//       setCurrColor={changeCurrBorderColor}
//       conflictColors={[
//         currFillColor,
//         currMode === "line" ? "transparent" : null,
//       ]}
//     />
//   );
// };

// const FillColor = ({ currFillColor, changeCurrFillColor, currBorderColor }) => {
//   return (
//     <ColorPicker
//       title={"Fill color:"}
//       currColor={currFillColor}
//       setCurrColor={changeCurrFillColor}
//       conflictColors={[currBorderColor]}
//     />
//   );
// };

// const BorderWidth = ({ currBorderWidth, changeCurrBorderWidth }) => {
//   return (
//     <div className="Control">
//       <h3>Border width:</h3>
//       <div style={{ display: "flex", alignItems: "center" }}>
//         <input
//           type="range"
//           tabIndex="-1"
//           style={{ width: 200 }}
//           onChange={(e) => changeCurrBorderWidth(e.target.value)}
//           min={1}
//           max={30}
//           value={currBorderWidth}
//         />
//         &nbsp;&nbsp;&nbsp;
//         <span>{currBorderWidth}</span>
//       </div>
//     </div>
//   );
// };

// const Delete = ({ selectedShapeId, deleteSelectedShape }) => {
//   return (
//     <div className="Control">
//       <h3>Delete:</h3>
//       <div className="DeleteButtonsContainer">
//         <button
//           onClick={() => deleteSelectedShape()}
//           disabled={!selectedShapeId}
//           style={{
//             cursor: !selectedShapeId ? "not-allowed" : null,
//           }}
//         >
//           <FaTrash className="ButtonIcon" /> Delete
//         </button>{" "}
//       </div>
//     </div>
//   );
// };

// const UndoRedo = ({ undo, redo }) => {
//   return (
//     <div className="Control">
//       <h3>Undo / Redo:</h3>
//       <div className="UndoRedoButtonsContainer">
//         <button onClick={() => undo()}>
//           <ImUndo className="ButtonIcon" />
//           Undo
//         </button>{" "}
//         <button onClick={() => redo()}>
//           <ImRedo className="ButtonIcon" />
//           Redo
//         </button>
//       </div>
//     </div>
//   );
// };

// const ControlPanel = () => {
//   // use useContext to access the functions & values from the provider
//   const {
//     currMode,
//     changeCurrMode,
//     currBorderColor,
//     changeCurrBorderColor,
//     currFillColor,
//     changeCurrFillColor,
//     currBorderWidth,
//     changeCurrBorderWidth,
//     selectedShapeId,
//     deleteSelectedShape,
//     undo,
//     redo,
//   } = useContext(ControlContext);

//   return (
//     <div className="ControlPanel">
//       <Modes
//         currMode={currMode}
//         changeCurrMode={changeCurrMode}
//         currBorderColor={currBorderColor}
//         currFillColor={currFillColor}
//       />
//       <BorderColor
//         currMode={currMode}
//         currBorderColor={currBorderColor}
//         changeCurrBorderColor={changeCurrBorderColor}
//         currFillColor={currFillColor}
//       />
//       <BorderWidth
//         currBorderWidth={currBorderWidth}
//         changeCurrBorderWidth={changeCurrBorderWidth}
//       />
//       <FillColor
//         currFillColor={currFillColor}
//         changeCurrFillColor={changeCurrFillColor}
//         currBorderColor={currBorderColor}
//       />
//       <Delete
//         selectedShapeId={selectedShapeId}
//         deleteSelectedShape={deleteSelectedShape}
//       />
//       <UndoRedo undo={undo} redo={redo} />
//     </div>
//   );
// };

// export default ControlPanel;
