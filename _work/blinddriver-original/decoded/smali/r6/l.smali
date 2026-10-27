.class public final Lr6/l;
.super Lpc/h;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Class;

.field public final o:Lb6/u;


# direct methods
.method public constructor <init>(Lpc/h;Ljava/lang/Class;Lb6/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr6/l;->n:Ljava/lang/Class;

    iput-object p3, p0, Lr6/l;->o:Lb6/u;

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Class;Lb6/u;)Lpc/h;
    .locals 6

    new-instance v0, Lr6/i;

    iget-object v2, p0, Lr6/l;->n:Ljava/lang/Class;

    iget-object v3, p0, Lr6/l;->o:Lb6/u;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lr6/i;-><init>(Lr6/l;Ljava/lang/Class;Lb6/u;Ljava/lang/Class;Lb6/u;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Class;)Lb6/u;
    .locals 1

    iget-object v0, p0, Lr6/l;->n:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lr6/l;->o:Lb6/u;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
