.class public final Ld5/g;
.super Ld5/c;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Le5/f;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ld5/c;-><init>(Le5/f;)V

    const/4 p1, 0x7

    iput p1, p0, Ld5/g;->b:I

    return-void
.end method


# virtual methods
.method public final b(Lg5/o;)Z
    .locals 0

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    iget p0, p0, Lx4/d;->a:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Ld5/g;->b:I

    return p0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lc5/h;

    const-string p0, "value"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lc5/h;->a:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lc5/h;->d:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
