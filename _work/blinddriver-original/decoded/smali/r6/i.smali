.class public final Lr6/i;
.super Lpc/h;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Class;

.field public final o:Ljava/lang/Class;

.field public final p:Lb6/u;

.field public final q:Lb6/u;


# direct methods
.method public constructor <init>(Lr6/l;Ljava/lang/Class;Lb6/u;Ljava/lang/Class;Lb6/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr6/i;->n:Ljava/lang/Class;

    iput-object p3, p0, Lr6/i;->p:Lb6/u;

    iput-object p4, p0, Lr6/i;->o:Ljava/lang/Class;

    iput-object p5, p0, Lr6/i;->q:Lb6/u;

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Class;Lb6/u;)Lpc/h;
    .locals 4

    new-instance v0, Lr6/m;

    iget-object v1, p0, Lr6/i;->n:Ljava/lang/Class;

    iget-object v2, p0, Lr6/i;->p:Lb6/u;

    invoke-direct {v0, v1, v2}, Lr6/m;-><init>(Ljava/lang/Class;Lb6/u;)V

    new-instance v1, Lr6/m;

    iget-object v2, p0, Lr6/i;->o:Ljava/lang/Class;

    iget-object v3, p0, Lr6/i;->q:Lb6/u;

    invoke-direct {v1, v2, v3}, Lr6/m;-><init>(Ljava/lang/Class;Lb6/u;)V

    new-instance v2, Lr6/m;

    invoke-direct {v2, p1, p2}, Lr6/m;-><init>(Ljava/lang/Class;Lb6/u;)V

    filled-new-array {v0, v1, v2}, [Lr6/m;

    move-result-object p1

    new-instance p2, Lr6/k;

    invoke-direct {p2, p0, p1}, Lr6/k;-><init>(Lpc/h;[Lr6/m;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Class;)Lb6/u;
    .locals 1

    iget-object v0, p0, Lr6/i;->n:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lr6/i;->p:Lb6/u;

    return-object p0

    :cond_0
    iget-object v0, p0, Lr6/i;->o:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lr6/i;->q:Lb6/u;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
