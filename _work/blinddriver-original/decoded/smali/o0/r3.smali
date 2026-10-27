.class public abstract Lo0/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/r3;->a:Lr0/s2;

    return-void
.end method

.method public static final a(Lq0/y;Lr0/q;)Lm1/h0;
    .locals 6

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/q3;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p1, Lo0/q3;->b:La0/d;

    return-object p0

    :pswitch_1
    sget-object p0, Lm1/v;->b:Lm1/e0;

    return-object p0

    :pswitch_2
    iget-object p0, p1, Lo0/q3;->c:La0/d;

    return-object p0

    :pswitch_3
    iget-object p0, p1, Lo0/q3;->d:La0/d;

    invoke-static {p0}, Lo0/r3;->b(La0/d;)La0/d;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p1, Lo0/q3;->d:La0/d;

    sget-object v2, Lo0/p3;->i:La0/b;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v1, 0x0

    move-object v3, v2

    invoke-static/range {v0 .. v5}, La0/d;->b(La0/d;La0/a;La0/a;La0/a;La0/a;I)La0/d;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p1, Lo0/q3;->f:La0/d;

    return-object p0

    :pswitch_6
    iget-object v0, p1, Lo0/q3;->d:La0/d;

    sget-object v1, Lo0/p3;->i:La0/b;

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x0

    move-object v4, v1

    invoke-static/range {v0 .. v5}, La0/d;->b(La0/d;La0/a;La0/a;La0/a;La0/a;I)La0/d;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p1, Lo0/q3;->d:La0/d;

    return-object p0

    :pswitch_8
    sget-object p0, La0/e;->a:La0/d;

    return-object p0

    :pswitch_9
    iget-object p0, p1, Lo0/q3;->a:La0/d;

    invoke-static {p0}, Lo0/r3;->b(La0/d;)La0/d;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, p1, Lo0/q3;->a:La0/d;

    return-object p0

    :pswitch_b
    iget-object p0, p1, Lo0/q3;->e:La0/d;

    invoke-static {p0}, Lo0/r3;->b(La0/d;)La0/d;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p1, Lo0/q3;->g:La0/d;

    return-object p0

    :pswitch_d
    iget-object p0, p1, Lo0/q3;->e:La0/d;

    return-object p0

    :pswitch_e
    iget-object p0, p1, Lo0/q3;->h:La0/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(La0/d;)La0/d;
    .locals 6

    sget-object v3, Lo0/p3;->i:La0/b;

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    move-object v4, v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, La0/d;->b(La0/d;La0/a;La0/a;La0/a;La0/a;I)La0/d;

    move-result-object p0

    return-object p0
.end method
