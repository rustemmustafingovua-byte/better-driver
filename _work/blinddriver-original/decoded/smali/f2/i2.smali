.class public final Lf2/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/r1;


# instance fields
.field public final l:I

.field public final m:Ljava/util/List;

.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Float;

.field public p:Lm2/i;

.field public q:Lm2/i;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf2/i2;->l:I

    iput-object p2, p0, Lf2/i2;->m:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lf2/i2;->n:Ljava/lang/Float;

    iput-object p1, p0, Lf2/i2;->o:Ljava/lang/Float;

    iput-object p1, p0, Lf2/i2;->p:Lm2/i;

    iput-object p1, p0, Lf2/i2;->q:Lm2/i;

    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 1

    iget-object v0, p0, Lf2/i2;->m:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
