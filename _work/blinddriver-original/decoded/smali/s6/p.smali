.class public final Ls6/p;
.super Ls6/o0;
.source "SourceFile"


# static fields
.field public static final p:Ls6/p;

.field public static final q:Ls6/p;


# instance fields
.field public final synthetic o:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ls6/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls6/p;-><init>(I)V

    sput-object v0, Ls6/p;->p:Ls6/p;

    new-instance v0, Ls6/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls6/p;-><init>(I)V

    sput-object v0, Ls6/p;->q:Ls6/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ls6/p;->o:I

    packed-switch p1, :pswitch_data_0

    .line 2
    const-class p1, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Ls6/o0;-><init>(ILjava/lang/Class;)V

    return-void

    .line 4
    :pswitch_0
    const-class p1, Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Ls6/o0;-><init>(ILjava/lang/Class;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ls6/p;->o:I

    invoke-direct {p0, p1, p2}, Ls6/o0;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Ls6/p;->o:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Ls6/p;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Ls6/o0;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    iget v0, p0, Ls6/p;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ls6/o0;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_0
    const/16 p0, 0x270f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ls5/f;->u:Ls5/f;

    invoke-virtual {p2, v1}, Ls5/g;->q(Ls5/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    const/16 v2, -0x270f

    if-lt v1, v2, :cond_0

    if-gt v1, p0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lq6/k;

    iget-object p1, p3, Lq6/k;->C:Ls5/g;

    new-instance p2, Lb6/p;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
