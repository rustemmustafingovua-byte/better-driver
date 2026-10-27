.class public Lu2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field public final a:Landroidx/fragment/app/t;

.field public b:Lk0/t;


# direct methods
.method public constructor <init>(Lk0/t;Landroidx/fragment/app/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu2/n;->a:Landroidx/fragment/app/t;

    iput-object p1, p0, Lu2/n;->b:Lk0/t;

    return-void
.end method


# virtual methods
.method public final a(Lk0/t;)V
    .locals 0

    invoke-virtual {p1}, Lk0/t;->closeConnection()V

    return-void
.end method

.method public final beginBatchEdit()Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk0/t;->beginBatchEdit()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearMetaKeyStates(I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->clearMetaKeyStates(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final closeConnection()V
    .locals 1

    iget-object v0, p0, Lu2/n;->b:Lk0/t;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lu2/n;->a(Lk0/t;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lu2/n;->b:Lk0/t;

    :cond_0
    iget-object v0, p0, Lu2/n;->a:Landroidx/fragment/app/t;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lk0/t;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final deleteSurroundingText(II)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->deleteSurroundingText(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->deleteSurroundingTextInCodePoints(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final endBatchEdit()Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk0/t;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final finishComposingText()Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk0/t;->finishComposingText()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCursorCapsMode(I)I
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->getCursorCapsMode(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final performContextMenuAction(I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->performContextMenuAction(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final performEditorAction(I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->performEditorAction(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final reportFullscreenMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final requestCursorUpdates(I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->requestCursorUpdates(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk0/t;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setComposingRegion(II)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->setComposingRegion(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setSelection(II)Z
    .locals 0

    iget-object p0, p0, Lu2/n;->b:Lk0/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/t;->setSelection(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
