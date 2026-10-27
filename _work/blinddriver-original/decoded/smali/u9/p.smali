.class public abstract Lu9/p;
.super Ly8/a;
.source "SourceFile"

# interfaces
.implements Ly8/e;


# static fields
.field public static final m:Lu9/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu9/o;

    new-instance v1, Lsc/t0;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lsc/t0;-><init>(I)V

    sget-object v2, Ly8/d;->l:Ly8/d;

    invoke-direct {v0, v2, v1}, Lu9/o;-><init>(Ly8/g;Li9/c;)V

    sput-object v0, Lu9/p;->m:Lu9/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ly8/d;->l:Ly8/d;

    invoke-direct {p0, v0}, Ly8/a;-><init>(Ly8/g;)V

    return-void
.end method


# virtual methods
.method public abstract R(Ly8/h;Ljava/lang/Runnable;)V
.end method

.method public S(Ly8/h;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public T(Ly8/h;)Z
    .locals 0

    instance-of p0, p0, Lu9/s1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public U(I)Lu9/p;
    .locals 1

    invoke-static {p1}, Lz9/b;->a(I)V

    new-instance v0, Lz9/h;

    invoke-direct {v0, p0, p1}, Lz9/h;-><init>(Lu9/p;I)V

    return-object v0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lu9/o;

    if-eqz v0, :cond_2

    check-cast p1, Lu9/o;

    iget-object v0, p0, Ly8/a;->l:Ly8/g;

    if-eq v0, p1, :cond_1

    iget-object v1, p1, Lu9/o;->m:Ly8/g;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lu9/o;->l:Li9/c;

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly8/f;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    sget-object v0, Ly8/d;->l:Ly8/d;

    if-ne v0, p1, :cond_3

    :goto_1
    sget-object p0, Ly8/i;->l:Ly8/i;

    :cond_3
    return-object p0
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lu9/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lu9/o;

    iget-object v0, p0, Ly8/a;->l:Ly8/g;

    if-eq v0, p1, :cond_1

    iget-object v2, p1, Lu9/o;->m:Ly8/g;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object p1, p1, Lu9/o;->l:Li9/c;

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly8/f;

    if-eqz p0, :cond_3

    return-object p0

    :cond_2
    sget-object v0, Ly8/d;->l:Ly8/d;

    if-ne v0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lu9/v;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
