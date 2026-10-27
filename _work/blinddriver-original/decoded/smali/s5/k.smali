.class public abstract Ls5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final m:La6/k;


# instance fields
.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ls5/r;->values()[Ls5/r;

    move-result-object v0

    invoke-static {v0}, La6/k;->a([La6/j;)La6/k;

    move-result-object v0

    sput-object v0, Ls5/k;->m:La6/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Ls5/d;->y:I

    iput v0, p0, Ls5/k;->l:I

    return-void
.end method


# virtual methods
.method public abstract A0(Ls5/a;Lu6/e;)I
.end method

.method public B0()Z
    .locals 0

    instance-of p0, p0, Ly6/a;

    return p0
.end method

.method public abstract C()Ljava/math/BigInteger;
.end method

.method public abstract C0()Ls5/k;
.end method

.method public abstract D0()Ls5/c;
.end method

.method public abstract J(Ls5/a;)[B
.end method

.method public K()Z
    .locals 4

    invoke-virtual {p0}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->D:Ls5/n;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Ls5/n;->E:Ls5/n;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance v1, Ls5/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current token ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not of boolean type"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1
.end method

.method public P()B
    .locals 4

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    int-to-byte p0, v0

    return p0

    :cond_0
    new-instance v0, Ls5/i;

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Numeric value ("

    const-string v3, ") out of range of Java byte"

    invoke-static {v2, v1, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ls5/n;->t:Ls5/n;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public abstract R()Ls5/o;
.end method

.method public abstract S()Ljava/lang/String;
.end method

.method public abstract T()Ljava/math/BigDecimal;
.end method

.method public abstract U()D
.end method

.method public V()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract W()F
.end method

.method public abstract X()I
.end method

.method public abstract Y()J
.end method

.method public abstract Z()I
.end method

.method public abstract a0()I
.end method

.method public final b(Ljava/lang/String;Ls5/h;)Ls5/i;
    .locals 2

    new-instance v0, Ls5/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public abstract b0()Ljava/lang/Number;
.end method

.method public c()Ls5/h;
    .locals 0

    invoke-virtual {p0}, Ls5/k;->n()Ls5/h;

    move-result-object p0

    return-object p0
.end method

.method public c0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ls5/k;->e0()Ls5/m;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ls5/m;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract e0()Ls5/m;
.end method

.method public abstract f0()La6/k;
.end method

.method public g0()S
    .locals 4

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    int-to-short p0, v0

    return p0

    :cond_0
    new-instance v0, Ls5/i;

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Numeric value ("

    const-string v3, ") out of range of Java short"

    invoke-static {v2, v1, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ls5/n;->t:Ls5/n;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public abstract h0()Ljava/lang/String;
.end method

.method public abstract i0()[C
.end method

.method public abstract j0()I
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract k0()I
.end method

.method public l0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract m()V
.end method

.method public abstract m0()I
.end method

.method public abstract n()Ls5/h;
.end method

.method public abstract n0()J
.end method

.method public abstract o0()Ljava/lang/String;
.end method

.method public abstract p0()Z
.end method

.method public q()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ls5/k;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract q0(Ls5/n;)Z
.end method

.method public abstract r0(I)Z
.end method

.method public final s0(Ls5/s;)Z
    .locals 0

    iget-object p1, p1, Ls5/s;->n:Ls5/j;

    iget p0, p0, Ls5/k;->l:I

    invoke-virtual {p1, p0}, Ls5/j;->a(I)Z

    move-result p0

    return p0
.end method

.method public abstract t()Ls5/n;
.end method

.method public abstract t0()Z
.end method

.method public abstract u0()Z
.end method

.method public abstract v0()Z
.end method

.method public abstract w()I
.end method

.method public abstract w0()Z
.end method

.method public x0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract y()Ls5/h;
.end method

.method public y0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract z0()Ls5/n;
.end method
