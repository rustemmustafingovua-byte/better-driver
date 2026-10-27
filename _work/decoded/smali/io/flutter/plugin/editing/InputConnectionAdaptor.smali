.class public Lio/flutter/plugin/editing/InputConnectionAdaptor;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnectionAdaptor.java"

# interfaces
.implements Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionAdaptor"


# instance fields
.field private batchEditNestDepth:I

.field private flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

.field private final keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

.field private final mClient:I

.field private mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field private final mFlutterView:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mLayout:Landroid/text/Layout;

.field private mMonitorCursorUpdate:Z

.field private final scribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "client"    # I
    .param p3, "textInputChannel"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .param p4, "scribeChannel"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .param p5, "keyboardDelegate"    # Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;
    .param p6, "editable"    # Lio/flutter/plugin/editing/ListenableEditingState;
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 109
    new-instance v8, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v8}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/flutter/plugin/editing/InputConnectionAdaptor;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "client"    # I
    .param p3, "textInputChannel"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .param p4, "scribeChannel"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .param p5, "keyboardDelegate"    # Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;
    .param p6, "editable"    # Lio/flutter/plugin/editing/ListenableEditingState;
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    .line 60
    new-instance v3, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v3, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 65
    iput v2, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 78
    iput-object v1, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 79
    move/from16 v2, p2

    iput v2, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 80
    move-object/from16 v3, p3

    iput-object v3, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 81
    move-object/from16 v4, p4

    iput-object v4, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->scribeChannel:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    .line 82
    move-object/from16 v5, p6

    iput-object v5, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 83
    iget-object v6, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v6, v0}, Lio/flutter/plugin/editing/ListenableEditingState;->addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 84
    move-object/from16 v6, p7

    iput-object v6, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 85
    move-object/from16 v7, p5

    iput-object v7, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

    .line 86
    new-instance v8, Lio/flutter/plugin/editing/FlutterTextUtils;

    move-object/from16 v9, p8

    invoke-direct {v8, v9}, Lio/flutter/plugin/editing/FlutterTextUtils;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v8, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    .line 89
    new-instance v10, Landroid/text/DynamicLayout;

    iget-object v11, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    new-instance v12, Landroid/text/TextPaint;

    invoke-direct {v12}, Landroid/text/TextPaint;-><init>()V

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v13, 0x7fffffff

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    return-void
.end method

.method private static clampIndexToEditable(ILandroid/text/Editable;)I
    .locals 3
    .param p0, "index"    # I
    .param p1, "editable"    # Landroid/text/Editable;

    .line 283
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 284
    .local v0, "clamped":I
    if-eq v0, p0, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text selection index was clamped ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutter"

    invoke-static {v2, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return v0
.end method

.method private doPerformContextMenuAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .line 406
    const v0, 0x102001f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 408
    return v1

    .line 409
    :cond_0
    const v0, 0x1020020

    const-string v3, "text label?"

    const-string v4, "clipboard"

    if-ne p1, v0, :cond_2

    .line 410
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 411
    .local v0, "selStart":I
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 412
    .local v2, "selEnd":I
    if-eq v0, v2, :cond_1

    .line 413
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 414
    .local v5, "selMin":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 415
    .local v6, "selMax":I
    iget-object v7, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v7, v5, v6}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 416
    .local v7, "textToCut":Ljava/lang/CharSequence;
    iget-object v8, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 418
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 419
    .local v4, "clipboard":Landroid/content/ClipboardManager;
    invoke-static {v3, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 420
    .local v3, "clip":Landroid/content/ClipData;
    invoke-virtual {v4, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 421
    iget-object v8, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v8, v5, v6}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 422
    invoke-virtual {p0, v5, v5}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 424
    .end local v3    # "clip":Landroid/content/ClipData;
    .end local v4    # "clipboard":Landroid/content/ClipboardManager;
    .end local v5    # "selMin":I
    .end local v6    # "selMax":I
    .end local v7    # "textToCut":Ljava/lang/CharSequence;
    :cond_1
    return v1

    .line 425
    .end local v0    # "selStart":I
    .end local v2    # "selEnd":I
    :cond_2
    const v0, 0x1020021

    if-ne p1, v0, :cond_4

    .line 426
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 427
    .restart local v0    # "selStart":I
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 428
    .restart local v2    # "selEnd":I
    if-eq v0, v2, :cond_3

    .line 429
    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 430
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 431
    .local v5, "textToCopy":Ljava/lang/CharSequence;
    iget-object v6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 433
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 434
    .restart local v4    # "clipboard":Landroid/content/ClipboardManager;
    invoke-static {v3, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 436
    .end local v4    # "clipboard":Landroid/content/ClipboardManager;
    .end local v5    # "textToCopy":Ljava/lang/CharSequence;
    :cond_3
    return v1

    .line 437
    .end local v0    # "selStart":I
    .end local v2    # "selEnd":I
    :cond_4
    const v0, 0x1020022

    if-ne p1, v0, :cond_7

    .line 438
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 440
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 441
    .restart local v3    # "clip":Landroid/content/ClipData;
    if-eqz v3, :cond_6

    .line 442
    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 443
    .local v4, "textToPaste":Ljava/lang/CharSequence;
    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 444
    .local v5, "selStart":I
    iget-object v6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 445
    .restart local v2    # "selEnd":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 446
    .local v6, "selMin":I
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 447
    .local v7, "selMax":I
    if-eq v6, v7, :cond_5

    iget-object v8, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v8, v6, v7}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 448
    :cond_5
    iget-object v8, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v8, v6, v4}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 449
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v8, v6

    .line 450
    .local v8, "newSelStart":I
    invoke-virtual {p0, v8, v8}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 452
    .end local v2    # "selEnd":I
    .end local v4    # "textToPaste":Ljava/lang/CharSequence;
    .end local v5    # "selStart":I
    .end local v6    # "selMin":I
    .end local v7    # "selMax":I
    .end local v8    # "newSelStart":I
    :cond_6
    return v1

    .line 454
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    .end local v3    # "clip":Landroid/content/ClipData;
    :cond_7
    return v2
.end method

.method private getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 5

    .line 134
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 140
    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 141
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 142
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v0

    .line 143
    .local v0, "composingStart":I
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v1

    .line 144
    .local v1, "composingEnd":I
    if-ltz v0, :cond_1

    if-le v1, v0, :cond_1

    .line 145
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 146
    invoke-virtual {v3}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_1

    .line 148
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 150
    :goto_1
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    return-object v2
.end method

.method private getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .line 121
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 122
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 123
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 124
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 125
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 126
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 127
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_1
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-object v0
.end method

.method private handleHorizontalMovement(ZZ)Z
    .locals 5
    .param p1, "isLeft"    # Z
    .param p2, "isShiftPressed"    # Z

    .line 344
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 345
    .local v0, "selStart":I
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 347
    .local v1, "selEnd":I
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_2

    .line 352
    :cond_0
    if-eqz p1, :cond_1

    .line 353
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v3, v4, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 354
    :cond_1
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v3, v4, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v4}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    nop

    .line 356
    .local v3, "newSelectionEnd":I
    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    move v2, v4

    .line 358
    .local v2, "shouldCollapse":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {p0, v0, v3}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 363
    :goto_1
    return v4

    .line 348
    .end local v2    # "shouldCollapse":Z
    .end local v3    # "newSelectionEnd":I
    :cond_4
    :goto_2
    return v2
.end method

.method private handleVerticalMovement(ZZ)Z
    .locals 6
    .param p1, "isUp"    # Z
    .param p2, "isShiftPressed"    # Z

    .line 367
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 368
    .local v0, "selStart":I
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 370
    .local v1, "selEnd":I
    const/4 v2, 0x0

    if-ltz v0, :cond_5

    if-gez v1, :cond_0

    goto :goto_3

    .line 374
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    move v2, v3

    .line 376
    .local v2, "shouldCollapse":Z
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 377
    if-eqz v2, :cond_3

    .line 378
    if-eqz p1, :cond_2

    .line 379
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {v4, v5}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    .line 381
    :cond_2
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {v4, v5}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 383
    :goto_0
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 384
    .local v4, "newSelection":I
    invoke-virtual {p0, v4, v4}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 385
    .end local v4    # "newSelection":I
    goto :goto_2

    .line 386
    :cond_3
    if-eqz p1, :cond_4

    .line 387
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {v4, v5}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 389
    :cond_4
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {v4, v5}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 391
    :goto_1
    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 393
    :goto_2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 394
    return v3

    .line 371
    .end local v2    # "shouldCollapse":Z
    :cond_5
    :goto_3
    return v2
.end method

.method private readStreamFully(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blocksize"    # I

    .line 547
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-array v1, p2, [B

    .line 551
    .local v1, "buffer":[B
    :goto_0
    const/4 v2, -0x1

    .line 553
    .local v2, "len":I
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 555
    goto :goto_1

    .line 554
    :catch_0
    move-exception v3

    .line 556
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 559
    .end local v2    # "len":I
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 557
    .restart local v2    # "len":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 558
    .end local v2    # "len":I
    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->beginBatchEdit()V

    .line 161
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 162
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .line 255
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    .line 256
    .local v0, "result":Z
    return v0
.end method

.method public closeConnection()V
    .locals 1

    .line 261
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    .line 262
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 263
    :goto_0
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    if-lez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 263
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 498
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 501
    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    nop

    .line 509
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 510
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    .line 512
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 513
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 516
    .local v3, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 520
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    .local v4, "is":Ljava/io/InputStream;
    nop

    .line 526
    if-eqz v4, :cond_0

    .line 527
    const/high16 v1, 0x10000

    invoke-direct {p0, v4, v1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->readStreamFully(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 529
    .local v1, "data":[B
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v5, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "mimeType"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v6, "data"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v6, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v7, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v6, v7, v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->commitContent(ILjava/util/Map;)V

    .line 536
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    .line 537
    const/4 v6, 0x1

    return v6

    .line 521
    .end local v1    # "data":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 522
    .local v4, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    .line 523
    return v1

    .line 541
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    .line 543
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    :cond_1
    return v1

    .line 502
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    return v1

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 176
    .local v0, "result":Z
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 181
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    .line 186
    .local v0, "result":Z
    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result v0

    .line 192
    .local v0, "result":Z
    return v0
.end method

.method public didChangeEditingState(ZZZ)V
    .locals 6
    .param p1, "textChanged"    # Z
    .param p2, "selectionChanged"    # Z
    .param p3, "composingRegionChanged"    # Z

    .line 574
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 576
    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 577
    invoke-virtual {v3}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 578
    invoke-virtual {v4}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v4

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 579
    invoke-virtual {v5}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v5

    .line 574
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 581
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    iget v2, v2, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 583
    invoke-direct {p0, v3}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 582
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 585
    :cond_0
    iget-boolean v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eqz v0, :cond_1

    .line 586
    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    .line 587
    .local v0, "info":Landroid/view/inputmethod/CursorAnchorInfo;
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 589
    .end local v0    # "info":Landroid/view/inputmethod/CursorAnchorInfo;
    :cond_1
    return-void
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 167
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    .line 168
    .local v0, "result":Z
    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 169
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->endBatchEdit()V

    .line 170
    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    .line 217
    .local v0, "result":Z
    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 4
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 227
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 228
    .local v0, "textMonitor":Z
    :goto_0
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_3

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input method toggled text monitoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "on"

    goto :goto_1

    :cond_2
    const-string v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputConnectionAdaptor"

    invoke-static {v2, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_3
    if-eqz v0, :cond_4

    move-object v1, p1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 234
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    return-object v1
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 306
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result v0

    return v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result v0

    return v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result v0

    return v0

    .line 312
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 313
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result v0

    return v0

    .line 316
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_4

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 319
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->performEditorAction(I)Z

    .line 320
    return v3

    .line 323
    :cond_5
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 324
    .local v0, "selStart":I
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 325
    .local v2, "selEnd":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 326
    .local v4, "character":I
    if-ltz v0, :cond_8

    if-ltz v2, :cond_8

    if-nez v4, :cond_6

    goto :goto_0

    .line 330
    :cond_6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 331
    .local v1, "selMin":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 332
    .local v5, "selMax":I
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 333
    if-eq v1, v5, :cond_7

    iget-object v6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v6, v1, v5}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 334
    :cond_7
    iget-object v6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    int-to-char v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v6, v7}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 336
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 337
    return v3

    .line 327
    .end local v1    # "selMin":I
    .end local v5    # "selMax":I
    :cond_8
    :goto_0
    return v1

    .line 340
    .end local v0    # "selStart":I
    .end local v2    # "selEnd":I
    .end local v4    # "character":I
    :cond_9
    return v1
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 399
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 400
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->doPerformContextMenuAction(I)Z

    move-result v0

    .line 401
    .local v0, "result":Z
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 402
    return v0
.end method

.method public performEditorAction(I)Z
    .locals 2
    .param p1, "actionCode"    # I

    .line 465
    packed-switch p1, :pswitch_data_0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->done(I)V

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->previous(I)V

    .line 486
    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->next(I)V

    .line 483
    goto :goto_0

    .line 479
    :pswitch_3
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->send(I)V

    .line 480
    goto :goto_0

    .line 476
    :pswitch_4
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->search(I)V

    .line 477
    goto :goto_0

    .line 473
    :pswitch_5
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->go(I)V

    .line 474
    goto :goto_0

    .line 467
    :pswitch_6
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->newline(I)V

    .line 468
    goto :goto_0

    .line 470
    :pswitch_7
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->unspecifiedAction(I)V

    .line 471
    nop

    .line 492
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 459
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->performPrivateCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 4
    .param p1, "cursorUpdateMode"    # I

    .line 239
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 243
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 244
    .local v0, "updated":Z
    :goto_0
    iget-boolean v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eq v0, v2, :cond_3

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The input method toggled cursor monitoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v3, "on"

    goto :goto_1

    :cond_2
    const-string v3, "off"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputConnectionAdaptor"

    invoke-static {v3, v2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3
    iput-boolean v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    .line 250
    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 301
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

    invoke-interface {v0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 197
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 198
    .local v0, "result":Z
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 204
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 208
    .end local v0    # "result":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 210
    .restart local v0    # "result":Z
    :goto_0
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 211
    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 270
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 271
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 272
    .local v0, "result":Z
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 273
    return v0
.end method
