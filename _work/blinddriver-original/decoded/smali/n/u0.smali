.class public final synthetic Ln/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lj9/y;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ln/f;

.field public final synthetic o:Ln/p;

.field public final synthetic p:Ln/k;

.field public final synthetic q:F

.field public final synthetic r:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lj9/y;Ljava/lang/Object;Ln/f;Ln/p;Ln/k;FLi9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/u0;->l:Lj9/y;

    iput-object p2, p0, Ln/u0;->m:Ljava/lang/Object;

    iput-object p3, p0, Ln/u0;->n:Ln/f;

    iput-object p4, p0, Ln/u0;->o:Ln/p;

    iput-object p5, p0, Ln/u0;->p:Ln/k;

    iput p6, p0, Ln/u0;->q:F

    iput-object p7, p0, Ln/u0;->r:Li9/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v0, Ln/i;

    iget-object p1, p0, Ln/u0;->n:Ln/f;

    move-wide v4, v1

    invoke-interface {p1}, Ln/f;->c()Ln/o1;

    move-result-object v2

    invoke-interface {p1}, Ln/f;->g()Ljava/lang/Object;

    move-result-object v6

    new-instance v9, Ln/v0;

    const/4 v1, 0x1

    iget-object v10, p0, Ln/u0;->p:Ln/k;

    invoke-direct {v9, v10, v1}, Ln/v0;-><init>(Ln/k;I)V

    iget-object v1, p0, Ln/u0;->m:Ljava/lang/Object;

    iget-object v3, p0, Ln/u0;->o:Ln/p;

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Ln/i;-><init>(Ljava/lang/Object;Ln/o1;Ln/p;JLjava/lang/Object;JLi9/a;)V

    iget v3, p0, Ln/u0;->q:F

    iget-object v6, p0, Ln/u0;->r:Li9/c;

    move-wide v1, v4

    move-object v5, v10

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Ln/d;->i(Ln/i;JFLn/f;Ln/k;Li9/c;)V

    iget-object p0, p0, Ln/u0;->l:Lj9/y;

    iput-object v0, p0, Lj9/y;->m:Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
