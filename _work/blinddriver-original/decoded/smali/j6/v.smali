.class public abstract Lj6/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/s;


# static fields
.field public static final l:Lr5/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr5/a0;->p:Lr5/a0;

    sput-object v0, Lj6/v;->l:Lr5/a0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lj6/v;->m()Lj6/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj6/v;->s()Lj6/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj6/v;->n()Lj6/f;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()Lb6/i0;
.end method

.method public abstract c()Lb6/h0;
.end method

.method public abstract g()Ljava/util/List;
.end method

.method public abstract h()Lr5/a0;
.end method

.method public i()Lj6/d0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Lb6/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public k()[Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Lj6/h;
    .locals 1

    invoke-virtual {p0}, Lj6/v;->o()Lj6/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj6/v;->n()Lj6/f;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public abstract m()Lj6/m;
.end method

.method public abstract n()Lj6/f;
.end method

.method public abstract o()Lj6/i;
.end method

.method public abstract p()Lj6/h;
.end method

.method public abstract q()Lb6/l;
.end method

.method public abstract r()Ljava/lang/Class;
.end method

.method public abstract s()Lj6/i;
.end method

.method public abstract t()Lb6/i0;
.end method

.method public abstract u()Z
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public abstract x()Z
.end method

.method public y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract z(Ljava/lang/String;)Lj6/v;
.end method
