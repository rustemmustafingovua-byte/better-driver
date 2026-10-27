.class public final Ld5/d;
.super Ld5/c;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:I


# direct methods
.method public constructor <init>(Le5/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld5/d;->b:I

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/4 p1, 0x5

    .line 13
    iput p1, p0, Ld5/d;->c:I

    return-void
.end method

.method public constructor <init>(Le5/f;I)V
    .locals 0

    iput p2, p0, Ld5/d;->b:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "tracker"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Ld5/d;->c:I

    return-void

    .line 3
    :pswitch_0
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/16 p1, 0x9

    .line 5
    iput p1, p0, Ld5/d;->c:I

    return-void

    .line 6
    :pswitch_1
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/4 p1, 0x7

    .line 8
    iput p1, p0, Ld5/d;->c:I

    return-void

    .line 9
    :pswitch_2
    const-string p2, "tracker"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/4 p1, 0x7

    .line 11
    iput p1, p0, Ld5/d;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lg5/o;)Z
    .locals 1

    iget p0, p0, Ld5/d;->b:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget-boolean p0, p0, Lx4/d;->f:Z

    return p0

    :pswitch_0
    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget p0, p0, Lx4/d;->a:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_1
    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget p0, p0, Lx4/d;->a:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget-boolean p0, p0, Lx4/d;->e:Z

    return p0

    :pswitch_3
    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget-boolean p0, p0, Lx4/d;->c:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ld5/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Ld5/d;->c:I

    return p0

    :pswitch_0
    iget p0, p0, Ld5/d;->c:I

    return p0

    :pswitch_1
    iget p0, p0, Ld5/d;->c:I

    return p0

    :pswitch_2
    iget p0, p0, Ld5/d;->c:I

    return p0

    :pswitch_3
    iget p0, p0, Ld5/d;->c:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Ld5/d;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    check-cast p1, Lc5/h;

    const-string p0, "value"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lc5/h;->a:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lc5/h;->c:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_1
    check-cast p1, Lc5/h;

    const-string p0, "value"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lc5/h;->a:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lc5/h;->b:Z

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 p0, 0x1

    :goto_4
    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
