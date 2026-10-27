.class public final Lp/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/h0;


# static fields
.field public static final b:Lp/t0;

.field public static final c:Lp/t0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/t0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp/t0;-><init>(I)V

    sput-object v0, Lp/t0;->b:Lp/t0;

    new-instance v0, Lp/t0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp/t0;-><init>(I)V

    sput-object v0, Lp/t0;->c:Lp/t0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp/t0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLb3/m;Lb3/c;)Lm1/v;
    .locals 4

    iget p0, p0, Lp/t0;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lp/c0;->a:F

    invoke-interface {p4, p0}, Lb3/c;->h0(F)I

    move-result p0

    int-to-float p0, p0

    new-instance p3, Lm1/b0;

    new-instance p4, Ll1/c;

    neg-float v0, p0

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, p0

    const-wide v2, 0xffffffffL

    and-long p0, p1, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x0

    invoke-direct {p4, v0, p1, v1, p0}, Ll1/c;-><init>(FFFF)V

    invoke-direct {p3, p4}, Lm1/b0;-><init>(Ll1/c;)V

    return-object p3

    :pswitch_0
    sget p0, Lp/c0;->a:F

    invoke-interface {p4, p0}, Lb3/c;->h0(F)I

    move-result p0

    int-to-float p0, p0

    new-instance p3, Lm1/b0;

    new-instance p4, Ll1/c;

    neg-float v0, p0

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    add-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-direct {p4, p0, v0, v1, p1}, Ll1/c;-><init>(FFFF)V

    invoke-direct {p3, p4}, Lm1/b0;-><init>(Ll1/c;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
