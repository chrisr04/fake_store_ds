import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

class MoleculesModalsScreen extends StatelessWidget {
  const MoleculesModalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FakeDefaultAppBar(
        title: 'FakeModals',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: FakeSpacing.md,
          vertical: FakeSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Modal Success'),
            ),
            FakeButtonPrimary(
              onPressed: () {
                FakeModalSuccess.show(
                  context,
                  title: 'Operación completada con éxito',
                  description:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  buttonLabel: 'Continuar',
                  onPressedButton: () => Navigator.pop(context),
                );
              },
              label: 'Mostrar modal',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Modal Error'),
            ),
            FakeButtonPrimary(
              onPressed: () {
                FakeModalError.show(
                  context,
                  title: 'Operación invalida',
                  description:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  buttonLabel: 'Volver',
                  onPressedButton: () => Navigator.pop(context),
                );
              },
              label: 'Mostrar modal',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Modal Warning'),
            ),
            FakeButtonPrimary(
              onPressed: () {
                FakeModalWarning.show(
                  context,
                  title: 'Sus datos seran enviados',
                  description:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  buttonLabel: 'Continuar',
                  onPressedButton: () => Navigator.pop(context),
                );
              },
              label: 'Mostrar modal',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: FakeSpacing.md,
              ),
              child: FakeTextHeading6('Modal Decision'),
            ),
            FakeButtonPrimary(
              onPressed: () {
                FakeModalDecision.show(
                  context,
                  title: '¿Estas seguro que deseas eliminar este item?',
                  description:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  filledButtonLabel: 'Si, seguro',
                  outlinedButtonLabel: 'No, volver',
                  onPressedFilledButton: () => Navigator.pop(context),
                  onPressedOutlinedButton: () => Navigator.pop(context),
                );
              },
              label: 'Mostrar modal',
            ),
          ],
        ),
      ),
    );
  }
}
