.class public final Lp6/e;
.super Lp6/z;
.source "SourceFile"


# static fields
.field public static final m:Lp6/e;

.field public static final n:Lp6/e;


# instance fields
.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp6/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp6/e;-><init>(Z)V

    sput-object v0, Lp6/e;->m:Lp6/e;

    new-instance v0, Lp6/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp6/e;-><init>(Z)V

    sput-object v0, Lp6/e;->n:Lp6/e;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lp6/e;->l:Z

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-eqz p0, :cond_0

    sget-object p0, Ls5/n;->D:Ls5/n;

    return-object p0

    :cond_0
    sget-object p0, Ls5/n;->E:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    invoke-virtual {p1, p0}, Ls5/g;->K(Z)V

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lp6/e;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lp6/e;

    iget-boolean p1, p1, Lp6/e;->l:Z

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-ne p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    return p0
.end method

.method public final l()D
    .locals 2

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final n()I
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    return p0
.end method

.method public final p()J
    .locals 2

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lp6/e;->l:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    return-object p0

    :cond_0
    const-string p0, "false"

    return-object p0
.end method
