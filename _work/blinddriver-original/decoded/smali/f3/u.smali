.class public final Lf3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lf3/b0;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lf3/b0;->l:Lf3/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf3/u;->a:Z

    iput-boolean v1, p0, Lf3/u;->b:Z

    iput-object v0, p0, Lf3/u;->c:Lf3/b0;

    iput-boolean v1, p0, Lf3/u;->d:Z

    iput-boolean v1, p0, Lf3/u;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lf3/u;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lf3/u;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lf3/u;

    iget-boolean v0, p1, Lf3/u;->a:Z

    iget-boolean v1, p0, Lf3/u;->a:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lf3/u;->b:Z

    iget-boolean v1, p1, Lf3/u;->b:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf3/u;->c:Lf3/b0;

    iget-object v1, p1, Lf3/u;->c:Lf3/b0;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lf3/u;->d:Z

    iget-boolean v1, p1, Lf3/u;->d:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Lf3/u;->e:Z

    iget-boolean p1, p1, Lf3/u;->e:Z

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lf3/u;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lf3/u;->b:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lf3/u;->c:Lf3/b0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lf3/u;->d:Z

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lf3/u;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
