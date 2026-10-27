.class public final Lk0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field public final a:Lb0/l1;

.field public final b:Z

.field public final c:Lb0/r1;

.field public final d:Lm0/v1;

.field public final e:Lf2/p2;

.field public f:I

.field public g:Lu2/x;

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Z


# direct methods
.method public constructor <init>(Lu2/x;Lb0/l1;ZLb0/r1;Lm0/v1;Lf2/p2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk0/t;->a:Lb0/l1;

    iput-boolean p3, p0, Lk0/t;->b:Z

    iput-object p4, p0, Lk0/t;->c:Lb0/r1;

    iput-object p5, p0, Lk0/t;->d:Lm0/v1;

    iput-object p6, p0, Lk0/t;->e:Lf2/p2;

    iput-object p1, p0, Lk0/t;->g:Lu2/x;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk0/t;->j:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk0/t;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lu2/g;)V
    .locals 1

    iget v0, p0, Lk0/t;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk0/t;->f:I

    :try_start_0
    iget-object v0, p0, Lk0/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lk0/t;->b()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lk0/t;->b()Z

    throw p1
.end method

.method public final b()Z
    .locals 3

    iget v0, p0, Lk0/t;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk0/t;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lk0/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lk0/t;->a:Lb0/l1;

    iget-object v2, v2, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v2, Lk0/s;

    iget-object v2, v2, Lk0/s;->c:Li9/c;

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget p0, p0, Lk0/t;->f:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final beginBatchEdit()Z
    .locals 2

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lk0/t;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lk0/t;->f:I

    return v1

    :cond_0
    return v0
.end method

.method public final c(I)V
    .locals 2

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lk0/t;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lk0/t;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public final clearMetaKeyStates(I)Z
    .locals 0

    iget-boolean p0, p0, Lk0/t;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final closeConnection()V
    .locals 4

    iget-object v0, p0, Lk0/t;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lk0/t;->f:I

    iput-boolean v0, p0, Lk0/t;->k:Z

    iget-object v1, p0, Lk0/t;->a:Lb0/l1;

    iget-object v1, v1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, Lk0/s;

    iget-object v1, v1, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lk0/t;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    iget-boolean p0, p0, Lk0/t;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    iget-boolean p1, p0, Lk0/t;->k:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lk0/t;->b:Z

    return p0

    :cond_0
    return p1
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v1, Lu2/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lu2/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lk0/t;->a(Lu2/g;)V

    :cond_0
    return v0
.end method

.method public final deleteSurroundingText(II)Z
    .locals 1

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lu2/e;

    invoke-direct {v0, p1, p2}, Lu2/e;-><init>(II)V

    invoke-virtual {p0, v0}, Lk0/t;->a(Lu2/g;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lu2/f;

    invoke-direct {v0, p1, p2}, Lu2/f;-><init>(II)V

    invoke-virtual {p0, v0}, Lk0/t;->a(Lu2/g;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final endBatchEdit()Z
    .locals 0

    invoke-virtual {p0}, Lk0/t;->b()Z

    move-result p0

    return p0
.end method

.method public final finishComposingText()Z
    .locals 1

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lu2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lk0/t;->a(Lu2/g;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final getCursorCapsMode(I)I
    .locals 3

    iget-object p0, p0, Lk0/t;->g:Lu2/x;

    iget-object v0, p0, Lu2/x;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    iget-wide v1, p0, Lu2/x;->b:J

    invoke-static {v1, v2}, Lp2/l0;->f(J)I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public final getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lk0/t;->i:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Lk0/t;->h:I

    :cond_2
    iget-object p0, p0, Lk0/t;->g:Lu2/x;

    invoke-static {p0}, Lk0/o;->d(Lu2/x;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object p1, p0, Lk0/t;->g:Lu2/x;

    iget-wide v0, p1, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lk0/t;->g:Lu2/x;

    invoke-static {p0}, Lpc/h;->m(Lu2/x;)Lp2/g;

    move-result-object p0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lk0/t;->g:Lu2/x;

    invoke-static {p0, p1}, Lpc/h;->n(Lu2/x;I)Lp2/g;

    move-result-object p0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lk0/t;->g:Lu2/x;

    invoke-static {p0, p1}, Lpc/h;->o(Lu2/x;I)Lp2/g;

    move-result-object p0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final performContextMenuAction(I)Z
    .locals 2

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x117

    invoke-virtual {p0, p1}, Lk0/t;->c(I)V

    return v0

    :pswitch_1
    const/16 p1, 0x116

    invoke-virtual {p0, p1}, Lk0/t;->c(I)V

    return v0

    :pswitch_2
    const/16 p1, 0x115

    invoke-virtual {p0, p1}, Lk0/t;->c(I)V

    return v0

    :pswitch_3
    new-instance p1, Lu2/w;

    iget-object v1, p0, Lk0/t;->g:Lu2/x;

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lu2/w;-><init>(II)V

    invoke-virtual {p0, p1}, Lk0/t;->a(Lu2/g;)V

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performEditorAction(I)Z
    .locals 3

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME sends unsupported Editor Action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecordingIC"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move p1, v0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    :goto_0
    iget-object p0, p0, Lk0/t;->a:Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lk0/s;

    iget-object p0, p0, Lk0/s;->d:Li9/c;

    new-instance v1, Lu2/j;

    invoke-direct {v1, p1}, Lu2/j;-><init>(I)V

    invoke-interface {p0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_2c

    new-instance v3, Lb0/a;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iget-object v4, v0, Lk0/t;->c:Lb0/r1;

    const/4 v5, 0x3

    if-eqz v4, :cond_29

    iget-object v6, v4, Lb0/r1;->j:Lp2/g;

    if-nez v6, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {v4}, Lb0/r1;->d()Lb0/z2;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v7, Lb0/z2;->a:Lp2/j0;

    iget-object v7, v7, Lp2/j0;->a:Lp2/i0;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lp2/i0;->a:Lp2/g;

    goto :goto_0

    :cond_1
    move-object v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Lp2/g;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_f

    :cond_2
    invoke-static/range {p1 .. p1}, Lb5/a;->s(Ljava/lang/Object;)Z

    move-result v5

    const-wide v9, 0xffffffffL

    const/4 v7, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x1

    iget-object v13, v0, Lk0/t;->d:Lm0/v1;

    if-eqz v5, :cond_6

    invoke-static/range {p1 .. p1}, Lk0/i;->o(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    move-result-object v0

    invoke-static {v0}, Lb5/a;->l(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v5

    invoke-static {v0}, Lb5/a;->e(Landroid/view/inputmethod/SelectGesture;)I

    move-result v6

    if-eq v6, v12, :cond_3

    goto :goto_1

    :cond_3
    move v7, v12

    :goto_1
    invoke-static {v4, v5, v7}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lp2/l0;->c(J)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_4
    new-instance v0, Lu2/w;

    shr-long v6, v4, v11

    long-to-int v6, v6

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-direct {v0, v6, v4}, Lu2/w;-><init>(II)V

    invoke-virtual {v3, v0}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_5

    invoke-virtual {v13, v12}, Lm0/v1;->h(Z)V

    :cond_5
    :goto_2
    move v5, v12

    goto/16 :goto_f

    :cond_6
    invoke-static/range {p1 .. p1}, Lk0/i;->A(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {p1 .. p1}, Lk0/i;->i(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    move-result-object v0

    invoke-static {v0}, Lb5/a;->c(Landroid/view/inputmethod/DeleteGesture;)I

    move-result v5

    if-eq v5, v12, :cond_7

    move v5, v7

    goto :goto_3

    :cond_7
    move v5, v12

    :goto_3
    invoke-static {v0}, Lb5/a;->j(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v8}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v8

    invoke-static {v4, v8, v5}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lp2/l0;->c(J)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v0}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_8
    if-ne v5, v12, :cond_9

    move v7, v12

    :cond_9
    invoke-static {v8, v9, v6, v7, v3}, Lk0/o;->n(JLp2/g;ZLb0/a;)V

    goto :goto_2

    :cond_a
    invoke-static/range {p1 .. p1}, Lk0/i;->B(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static/range {p1 .. p1}, Lk0/i;->p(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    move-result-object v0

    invoke-static {v0}, Lk0/i;->f(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v5

    invoke-static {v0}, Lk0/i;->x(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v6}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v6

    invoke-static {v0}, Lb5/a;->f(Landroid/view/inputmethod/SelectRangeGesture;)I

    move-result v8

    if-eq v8, v12, :cond_b

    goto :goto_4

    :cond_b
    move v7, v12

    :goto_4
    invoke-static {v4, v5, v6, v7}, Lk0/o;->b(Lb0/r1;Ll1/c;Ll1/c;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lp2/l0;->c(J)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v0}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_c
    new-instance v0, Lu2/w;

    shr-long v6, v4, v11

    long-to-int v6, v6

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-direct {v0, v6, v4}, Lu2/w;-><init>(II)V

    invoke-virtual {v3, v0}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_5

    invoke-virtual {v13, v12}, Lm0/v1;->h(Z)V

    goto/16 :goto_2

    :cond_d
    invoke-static/range {p1 .. p1}, Lk0/i;->C(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static/range {p1 .. p1}, Lk0/i;->j(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    move-result-object v0

    invoke-static {v0}, Lb5/a;->d(Landroid/view/inputmethod/DeleteRangeGesture;)I

    move-result v5

    if-eq v5, v12, :cond_e

    move v5, v7

    goto :goto_5

    :cond_e
    move v5, v12

    :goto_5
    invoke-static {v0}, Lb5/a;->k(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v8}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v8

    invoke-static {v0}, Lb5/a;->v(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v9

    invoke-static {v4, v8, v9, v5}, Lk0/o;->b(Lb0/r1;Ll1/c;Ll1/c;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lp2/l0;->c(J)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v0}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_f
    if-ne v5, v12, :cond_10

    move v7, v12

    :cond_10
    invoke-static {v8, v9, v6, v7, v3}, Lk0/o;->n(JLp2/g;ZLb0/a;)V

    goto/16 :goto_2

    :cond_11
    invoke-static/range {p1 .. p1}, Lk0/i;->z(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x2

    iget-object v0, v0, Lk0/t;->e:Lf2/p2;

    const/4 v10, -0x1

    if-eqz v5, :cond_1a

    invoke-static/range {p1 .. p1}, Lk0/i;->m(Ljava/lang/Object;)Landroid/view/inputmethod/JoinOrSplitGesture;

    move-result-object v5

    if-nez v0, :cond_12

    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_12
    invoke-static {v5}, Lk0/i;->d(Landroid/view/inputmethod/JoinOrSplitGesture;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8}, Lk0/o;->e(Landroid/graphics/PointF;)J

    move-result-wide v13

    invoke-static {v4, v13, v14, v0}, Lk0/o;->a(Lb0/r1;JLf2/p2;)I

    move-result v0

    if-eq v0, v10, :cond_19

    invoke-virtual {v4}, Lb0/r1;->d()Lb0/z2;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v4, Lb0/z2;->a:Lp2/j0;

    invoke-static {v4, v0}, Lk0/o;->c(Lp2/j0;I)Z

    move-result v4

    if-ne v4, v12, :cond_13

    goto :goto_9

    :cond_13
    move v4, v0

    :goto_6
    if-lez v4, :cond_15

    invoke-static {v6, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Lk0/o;->k(I)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_7

    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_6

    :cond_15
    :goto_7
    iget-object v5, v6, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_17

    invoke-static {v6, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Lk0/o;->k(I)Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_8

    :cond_16
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_7

    :cond_17
    :goto_8
    invoke-static {v4, v0}, Lp2/d0;->b(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Lp2/l0;->c(J)Z

    move-result v0

    if-eqz v0, :cond_18

    shr-long/2addr v4, v11

    long-to-int v0, v4

    new-instance v4, Lu2/w;

    invoke-direct {v4, v0, v0}, Lu2/w;-><init>(II)V

    new-instance v0, Lu2/a;

    const-string v5, " "

    invoke-direct {v0, v5, v12}, Lu2/a;-><init>(Ljava/lang/String;I)V

    new-array v5, v9, [Lu2/g;

    aput-object v4, v5, v7

    aput-object v0, v5, v12

    new-instance v0, Lk0/k;

    invoke-direct {v0, v5}, Lk0/k;-><init>([Lu2/g;)V

    invoke-virtual {v3, v0}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_18
    invoke-static {v4, v5, v6, v7, v3}, Lk0/o;->n(JLp2/g;ZLb0/a;)V

    goto/16 :goto_2

    :cond_19
    :goto_9
    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_1a
    invoke-static/range {p1 .. p1}, Lk0/i;->t(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static/range {p1 .. p1}, Lk0/i;->l(Ljava/lang/Object;)Landroid/view/inputmethod/InsertGesture;

    move-result-object v5

    if-nez v0, :cond_1b

    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_1b
    invoke-static {v5}, Lk0/i;->c(Landroid/view/inputmethod/InsertGesture;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6}, Lk0/o;->e(Landroid/graphics/PointF;)J

    move-result-wide v13

    invoke-static {v4, v13, v14, v0}, Lk0/o;->a(Lb0/r1;JLf2/p2;)I

    move-result v0

    if-eq v0, v10, :cond_1d

    invoke-virtual {v4}, Lb0/r1;->d()Lb0/z2;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v4, v4, Lb0/z2;->a:Lp2/j0;

    invoke-static {v4, v0}, Lk0/o;->c(Lp2/j0;I)Z

    move-result v4

    if-ne v4, v12, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-static {v5}, Lk0/i;->r(Landroid/view/inputmethod/InsertGesture;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lu2/w;

    invoke-direct {v5, v0, v0}, Lu2/w;-><init>(II)V

    new-instance v0, Lu2/a;

    invoke-direct {v0, v4, v12}, Lu2/a;-><init>(Ljava/lang/String;I)V

    new-array v4, v9, [Lu2/g;

    aput-object v5, v4, v7

    aput-object v0, v4, v12

    new-instance v0, Lk0/k;

    invoke-direct {v0, v4}, Lk0/k;-><init>([Lu2/g;)V

    invoke-virtual {v3, v0}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1d
    :goto_a
    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_1e
    invoke-static/range {p1 .. p1}, Lk0/i;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static/range {p1 .. p1}, Lk0/i;->n(Ljava/lang/Object;)Landroid/view/inputmethod/RemoveSpaceGesture;

    move-result-object v5

    invoke-virtual {v4}, Lb0/r1;->d()Lb0/z2;

    move-result-object v13

    if-eqz v13, :cond_1f

    iget-object v8, v13, Lb0/z2;->a:Lp2/j0;

    :cond_1f
    invoke-static {v5}, Lk0/i;->e(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-static {v13}, Lk0/o;->e(Landroid/graphics/PointF;)J

    move-result-wide v13

    invoke-static {v5}, Lk0/i;->w(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    move-result-object v15

    move/from16 v16, v11

    invoke-static {v15}, Lk0/o;->e(Landroid/graphics/PointF;)J

    move-result-wide v11

    invoke-virtual {v4}, Lb0/r1;->c()Lc2/u;

    move-result-object v4

    if-eqz v8, :cond_24

    iget-object v8, v8, Lp2/j0;->b:Lp2/n;

    if-nez v4, :cond_20

    goto :goto_c

    :cond_20
    invoke-interface {v4, v13, v14}, Lc2/u;->O(J)J

    move-result-wide v13

    invoke-interface {v4, v11, v12}, Lc2/u;->O(J)J

    move-result-wide v11

    invoke-static {v8, v13, v14, v0}, Lk0/o;->h(Lp2/n;JLf2/p2;)I

    move-result v4

    invoke-static {v8, v11, v12, v0}, Lk0/o;->h(Lp2/n;JLf2/p2;)I

    move-result v0

    if-ne v4, v10, :cond_21

    if-ne v0, v10, :cond_23

    sget-wide v11, Lp2/l0;->b:J

    goto :goto_d

    :cond_21
    if-ne v0, v10, :cond_22

    goto :goto_b

    :cond_22
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_b
    move v0, v4

    :cond_23
    invoke-virtual {v8, v0}, Lp2/n;->f(I)F

    move-result v4

    invoke-virtual {v8, v0}, Lp2/n;->b(I)F

    move-result v0

    add-float/2addr v0, v4

    int-to-float v4, v9

    div-float/2addr v0, v4

    new-instance v4, Ll1/c;

    shr-long v13, v13, v16

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    shr-long v11, v11, v16

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const v14, 0x3dcccccd    # 0.1f

    sub-float v15, v0, v14

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v0, v14

    invoke-direct {v4, v12, v15, v11, v0}, Ll1/c;-><init>(FFFF)V

    sget-object v0, Lp2/h0;->a:Lc2/c0;

    invoke-virtual {v8, v4, v7, v0}, Lp2/n;->h(Ll1/c;ILc2/c0;)J

    move-result-wide v11

    goto :goto_d

    :cond_24
    :goto_c
    sget-wide v11, Lp2/l0;->b:J

    :goto_d
    invoke-static {v11, v12}, Lp2/l0;->c(J)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto/16 :goto_f

    :cond_25
    new-instance v0, La6/k;

    invoke-direct {v0}, La6/k;-><init>()V

    iput v10, v0, La6/k;->m:I

    new-instance v4, La6/k;

    invoke-direct {v4}, La6/k;-><init>()V

    iput v10, v4, La6/k;->m:I

    invoke-static {v11, v12}, Lp2/l0;->f(J)I

    move-result v8

    invoke-static {v11, v12}, Lp2/l0;->e(J)I

    move-result v13

    invoke-virtual {v6, v8, v13}, Lp2/g;->c(II)Lp2/g;

    move-result-object v6

    iget-object v6, v6, Lp2/g;->m:Ljava/lang/String;

    new-instance v8, Lr9/i;

    const-string v13, "\\s+"

    invoke-direct {v8, v13}, Lr9/i;-><init>(Ljava/lang/String;)V

    new-instance v13, Lb0/r0;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v0, v4}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v6, v13}, Lr9/i;->h(Ljava/lang/String;Li9/c;)Ljava/lang/String;

    move-result-object v6

    iget v0, v0, La6/k;->m:I

    if-eq v0, v10, :cond_27

    iget v8, v4, La6/k;->m:I

    if-ne v8, v10, :cond_26

    goto :goto_e

    :cond_26
    shr-long v13, v11, v16

    long-to-int v5, v13

    add-int v10, v5, v0

    add-int/2addr v5, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v11, v12}, Lp2/l0;->d(J)I

    move-result v11

    iget v4, v4, La6/k;->m:I

    sub-int/2addr v11, v4

    sub-int/2addr v8, v11

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "substring(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lu2/w;

    invoke-direct {v4, v10, v5}, Lu2/w;-><init>(II)V

    new-instance v5, Lu2/a;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lu2/a;-><init>(Ljava/lang/String;I)V

    new-array v0, v9, [Lu2/g;

    aput-object v4, v0, v7

    aput-object v5, v0, v6

    new-instance v4, Lk0/k;

    invoke-direct {v4, v0}, Lk0/k;-><init>([Lu2/g;)V

    invoke-virtual {v3, v4}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto :goto_f

    :cond_27
    :goto_e
    invoke-static {v5}, Lk0/i;->k(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    invoke-static {v0, v3}, Lk0/o;->g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I

    move-result v5

    goto :goto_f

    :cond_28
    move v5, v9

    :cond_29
    :goto_f
    if-nez v2, :cond_2a

    goto :goto_10

    :cond_2a
    if-eqz v1, :cond_2b

    new-instance v0, Lk0/c;

    invoke-direct {v0, v2, v5}, Lk0/c;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2b
    invoke-interface {v2, v5}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2c
    :goto_10
    return-void
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    iget-boolean p0, p0, Lk0/t;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lk0/t;->c:Lb0/r1;

    if-eqz v0, :cond_14

    iget-object v1, v0, Lb0/r1;->j:Lp2/g;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lb0/z2;->a:Lp2/j0;

    iget-object v3, v3, Lp2/j0;->a:Lp2/i0;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lp2/i0;->a:Lp2/g;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lp2/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lb5/a;->s(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lk0/t;->d:Lm0/v1;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lk0/i;->o(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    move-result-object p1

    if-eqz p0, :cond_12

    invoke-static {p1}, Lb5/a;->l(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v1

    invoke-static {p1}, Lb5/a;->e(Landroid/view/inputmethod/SelectGesture;)I

    move-result p1

    if-eq p1, v3, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    invoke-static {v0, v1, p1}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide v0

    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v1}, Lb0/r1;->f(J)V

    :cond_4
    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_5

    sget-wide v4, Lp2/l0;->b:J

    invoke-virtual {p1, v4, v5}, Lb0/r1;->e(J)V

    :cond_5
    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0, v2}, Lm0/v1;->t(Z)V

    sget-object p1, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    goto/16 :goto_5

    :cond_6
    invoke-static {p1}, Lk0/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lk0/i;->i(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    move-result-object p1

    if-eqz p0, :cond_12

    invoke-static {p1}, Lb5/a;->j(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v1

    invoke-static {p1}, Lb5/a;->c(Landroid/view/inputmethod/DeleteGesture;)I

    move-result p1

    if-eq p1, v3, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    invoke-static {v0, v1, p1}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide v0

    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0, v1}, Lb0/r1;->e(J)V

    :cond_8
    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_9

    sget-wide v4, Lp2/l0;->b:J

    invoke-virtual {p1, v4, v5}, Lb0/r1;->f(J)V

    :cond_9
    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0, v2}, Lm0/v1;->t(Z)V

    sget-object p1, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    goto/16 :goto_5

    :cond_a
    invoke-static {p1}, Lk0/i;->B(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lk0/i;->p(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    move-result-object p1

    if-eqz p0, :cond_12

    invoke-static {p1}, Lk0/i;->f(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v1

    invoke-static {p1}, Lk0/i;->x(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v4

    invoke-static {p1}, Lb5/a;->f(Landroid/view/inputmethod/SelectRangeGesture;)I

    move-result p1

    if-eq p1, v3, :cond_b

    move p1, v2

    goto :goto_3

    :cond_b
    move p1, v3

    :goto_3
    invoke-static {v0, v1, v4, p1}, Lk0/o;->b(Lb0/r1;Ll1/c;Ll1/c;I)J

    move-result-wide v0

    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0, v1}, Lb0/r1;->f(J)V

    :cond_c
    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_d

    sget-wide v4, Lp2/l0;->b:J

    invoke-virtual {p1, v4, v5}, Lb0/r1;->e(J)V

    :cond_d
    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0, v2}, Lm0/v1;->t(Z)V

    sget-object p1, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    goto :goto_5

    :cond_e
    invoke-static {p1}, Lk0/i;->C(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p1}, Lk0/i;->j(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    move-result-object p1

    if-eqz p0, :cond_12

    invoke-static {p1}, Lb5/a;->k(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v1

    invoke-static {p1}, Lb5/a;->v(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lm1/v;->B(Landroid/graphics/RectF;)Ll1/c;

    move-result-object v4

    invoke-static {p1}, Lb5/a;->d(Landroid/view/inputmethod/DeleteRangeGesture;)I

    move-result p1

    if-eq p1, v3, :cond_f

    move p1, v2

    goto :goto_4

    :cond_f
    move p1, v3

    :goto_4
    invoke-static {v0, v1, v4, p1}, Lk0/o;->b(Lb0/r1;Ll1/c;Ll1/c;I)J

    move-result-wide v0

    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v0, v1}, Lb0/r1;->e(J)V

    :cond_10
    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_11

    sget-wide v4, Lp2/l0;->b:J

    invoke-virtual {p1, v4, v5}, Lb0/r1;->f(J)V

    :cond_11
    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0, v2}, Lm0/v1;->t(Z)V

    sget-object p1, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {p0, p1}, Lm0/v1;->q(Lb0/e1;)V

    :cond_12
    :goto_5
    if-eqz p2, :cond_13

    new-instance p1, Lk0/j;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lk0/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_13
    return v3

    :cond_14
    :goto_6
    return v2
.end method

.method public final reportFullscreenMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final requestCursorUpdates(I)Z
    .locals 9

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_a

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_8

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v1

    :goto_4
    const/16 v8, 0x22

    if-lt v4, v8, :cond_5

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    if-lt v4, v8, :cond_6

    move p1, v2

    move v1, p1

    :goto_5
    move v5, v1

    :goto_6
    move v6, v5

    goto :goto_7

    :cond_6
    move p1, v1

    move v1, v2

    goto :goto_5

    :cond_7
    move p1, v1

    move v1, v7

    goto :goto_7

    :cond_8
    move p1, v1

    move v5, v2

    goto :goto_6

    :goto_7
    iget-object p0, p0, Lk0/t;->a:Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lk0/s;

    iget-object p0, p0, Lk0/s;->m:Lk0/p;

    iget-object v4, p0, Lk0/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-boolean v5, p0, Lk0/p;->f:Z

    iput-boolean v6, p0, Lk0/p;->g:Z

    iput-boolean v1, p0, Lk0/p;->h:Z

    iput-boolean p1, p0, Lk0/p;->i:Z

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lk0/p;->e:Z

    iget-object p1, p0, Lk0/p;->j:Lu2/x;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lk0/p;->a()V

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_9
    :goto_8
    iput-boolean v3, p0, Lk0/p;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v2

    :goto_9
    monitor-exit v4

    throw p0

    :cond_a
    return v0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk0/t;->a:Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lk0/s;

    iget-object p0, p0, Lk0/s;->k:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final setComposingRegion(II)Z
    .locals 2

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v1, Lu2/u;

    invoke-direct {v1, p1, p2}, Lu2/u;-><init>(II)V

    invoke-virtual {p0, v1}, Lk0/t;->a(Lu2/g;)V

    :cond_0
    return v0
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v1, Lu2/v;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lu2/v;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lk0/t;->a(Lu2/g;)V

    :cond_0
    return v0
.end method

.method public final setSelection(II)Z
    .locals 1

    iget-boolean v0, p0, Lk0/t;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lu2/w;

    invoke-direct {v0, p1, p2}, Lu2/w;-><init>(II)V

    invoke-virtual {p0, v0}, Lk0/t;->a(Lu2/g;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
