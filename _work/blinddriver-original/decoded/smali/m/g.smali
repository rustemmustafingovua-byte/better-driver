.class public final Lm/g;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lm/g;

.field public static final n:Lm/g;

.field public static final o:Lm/g;

.field public static final p:Lm/g;

.field public static final q:Lm/g;

.field public static final r:Lm/g;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lm/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->m:Lm/g;

    new-instance v0, Lm/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->n:Lm/g;

    new-instance v0, Lm/g;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->o:Lm/g;

    new-instance v0, Lm/g;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->p:Lm/g;

    new-instance v0, Lm/g;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->q:Lm/g;

    new-instance v0, Lm/g;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    sput-object v0, Lm/g;->r:Lm/g;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lm/g;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lm/g;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lb3/l;

    iget-wide p0, p1, Lb3/l;->a:J

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-long p0, p0

    shl-long/2addr p0, v0

    const/4 v0, 0x0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    new-instance v0, Lb3/l;

    invoke-direct {v0, p0, p1}, Lb3/l;-><init>(J)V

    return-object v0

    :pswitch_0
    check-cast p1, Lb3/l;

    iget-wide p0, p1, Lb3/l;->a:J

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    const/4 p1, 0x0

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    new-instance v0, Lb3/l;

    invoke-direct {v0, p0, p1}, Lb3/l;-><init>(J)V

    return-object v0

    :pswitch_1
    check-cast p1, Lb3/l;

    iget-wide p0, p1, Lb3/l;->a:J

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-long p0, p0

    shl-long/2addr p0, v0

    const/4 v0, 0x0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    new-instance v0, Lb3/l;

    invoke-direct {v0, p0, p1}, Lb3/l;-><init>(J)V

    return-object v0

    :pswitch_2
    check-cast p1, Lb3/l;

    iget-wide p0, p1, Lb3/l;->a:J

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    const/4 p1, 0x0

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    new-instance v0, Lb3/l;

    invoke-direct {v0, p0, p1}, Lb3/l;-><init>(J)V

    return-object v0

    :pswitch_3
    check-cast p1, Ln/c1;

    sget-object p0, Lm/v;->c:Ln/r0;

    return-object p0

    :pswitch_4
    check-cast p1, Ln/c1;

    const/4 p0, 0x0

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    iget p1, p1, Ln/m;->b:F

    invoke-static {p0, p1}, Lm1/v;->h(FF)J

    move-result-wide p0

    new-instance v0, Lm1/k0;

    invoke-direct {v0, p0, p1}, Lm1/k0;-><init>(J)V

    return-object v0

    :pswitch_6
    check-cast p1, Lm1/k0;

    iget-wide p0, p1, Lm1/k0;->a:J

    new-instance v0, Ln/m;

    invoke-static {p0, p1}, Lm1/k0;->b(J)F

    move-result v1

    invoke-static {p0, p1}, Lm1/k0;->c(J)F

    move-result p0

    invoke-direct {v0, v1, p0}, Ln/m;-><init>(FF)V

    return-object v0

    :pswitch_7
    check-cast p1, Lm1/p;

    iget-wide p0, p1, Lm1/p;->a:J

    sget-object v0, Ln1/d;->x:Ln1/l;

    invoke-static {p0, p1, v0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lm1/p;->h(J)F

    move-result v0

    invoke-static {p0, p1}, Lm1/p;->g(J)F

    move-result v1

    invoke-static {p0, p1}, Lm1/p;->e(J)F

    move-result v2

    invoke-static {p0, p1}, Lm1/p;->d(J)F

    move-result p0

    new-instance p1, Ln/o;

    invoke-direct {p1, p0, v0, v1, v2}, Ln/o;-><init>(FFFF)V

    return-object p1

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
