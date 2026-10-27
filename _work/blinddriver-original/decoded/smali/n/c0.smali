.class public final Ln/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public l:Ljava/lang/Float;

.field public m:Ljava/lang/Float;

.field public final n:Lr0/e1;

.field public o:Ln/y0;

.field public p:Z

.field public q:Z

.field public r:J

.field public final synthetic s:Ln/e0;


# direct methods
.method public constructor <init>(Ln/e0;Ljava/lang/Float;Ljava/lang/Float;Ln/b0;)V
    .locals 6

    sget-object v2, Ln/d;->j:Ln/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/c0;->s:Ln/e0;

    iput-object p2, p0, Ln/c0;->l:Ljava/lang/Float;

    iput-object p3, p0, Ln/c0;->m:Ljava/lang/Float;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/c0;->n:Lr0/e1;

    new-instance v0, Ln/y0;

    iget-object v3, p0, Ln/c0;->l:Ljava/lang/Float;

    iget-object v4, p0, Ln/c0;->m:Ljava/lang/Float;

    const/4 v5, 0x0

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    iput-object v0, p0, Ln/c0;->o:Ln/y0;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/c0;->n:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
