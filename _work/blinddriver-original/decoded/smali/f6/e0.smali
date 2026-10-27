.class public final Lf6/e0;
.super Lg6/f1;
.source "SourceFile"


# instance fields
.field public final o:Lb6/l;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb6/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lb6/l;)V

    iput-object p1, p0, Lf6/e0;->o:Lb6/l;

    iput-object p2, p0, Lf6/e0;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf6/e0;->o:Lb6/l;

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    iget-object p0, p0, Lf6/e0;->p:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
