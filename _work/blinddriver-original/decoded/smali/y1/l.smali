.class public final Ly1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lad/a2;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lad/a2;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Ly1/l;->b:Lad/a2;

    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getClassification()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Ly1/l;->c:I

    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput p2, p0, Ly1/l;->d:I

    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput p2, p0, Ly1/l;->e:I

    invoke-virtual {p0}, Ly1/l;->a()Landroid/view/MotionEvent;

    move-result-object p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_6

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_6

    :cond_3
    :pswitch_3
    move v0, v1

    goto :goto_6

    :cond_4
    :goto_3
    :pswitch_4
    move v0, v2

    goto :goto_6

    :cond_5
    :goto_4
    :pswitch_5
    move v0, v3

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_5
    if-ge v0, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    invoke-static {v4}, Ly1/t;->d(Ly1/u;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4}, Ly1/t;->b(Ly1/u;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :goto_6
    iput v0, p0, Ly1/l;->f:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Ly1/l;->b:Lad/a2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lad/a2;->o:Ljava/lang/Object;

    check-cast p0, Lg5/s;

    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
