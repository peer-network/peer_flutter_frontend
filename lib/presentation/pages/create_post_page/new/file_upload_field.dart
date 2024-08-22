import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class FileUploadField extends StatefulWidget {
  /// Callback function that is called when a file is picked.
  final ValueChanged<PlatformFile?> onFilePicked;

  const FileUploadField({super.key, required this.onFilePicked});

  @override
  State<FileUploadField> createState() => _FileUploadFieldState();
}

class _FileUploadFieldState extends State<FileUploadField> {
  FilePickerStatus? _status;
  FilePickerResult? _result;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['txt'],
      onFileLoading: (FilePickerStatus status) {
        _status = status;
      },
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _result = result;
      });
      widget.onFilePicked(result.files.single);
    } else {
      widget.onFilePicked(null);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickFile,
      child: Container(
        height: AppDimensions.fileInputFieldHeight,
        decoration: BoxDecoration(
          color: Theme.of(context).inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).inputDecorationTheme.outlineBorder!.color,
          ),
        ),
        child: Center(
          child: _result == null && _result?.files.single.path == null
              ? (_status == FilePickerStatus.picking)
                  ? const CircularProgressIndicator()
                  : CustomIconButton(
                      sizeType: SizeType.medium,
                      color: Theme.of(context).primaryIconTheme.color,
                      icon: IconLibrary.plus,
                      onPressed: _pickFile)
              : Text(
                  'File selected: ${_result!.files.single.name}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
        ),
      ),
    );
  }
}
