.class public final Lw0/m;
.super Lw0/k;
.source "SourceFile"


# instance fields
.field public final o:Lr1/f0;


# direct methods
.method public constructor <init>(Lr1/f0;)V
    .locals 0

    invoke-direct {p0}, Lw0/k;-><init>()V

    iput-object p1, p0, Lw0/m;->o:Lr1/f0;

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw0/k;->n:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lw0/k;->n:I

    new-instance v1, Lw0/a;

    iget-object v2, p0, Lw0/k;->l:[Ljava/lang/Object;

    aget-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget-object p0, p0, Lw0/m;->o:Lr1/f0;

    invoke-direct {v1, p0, v3, v0}, Lw0/a;-><init>(Lr1/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
