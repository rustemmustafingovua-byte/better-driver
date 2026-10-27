.class public final synthetic Lo0/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lo0/u4;

.field public final synthetic p:Ls/i;

.field public final synthetic q:Lm1/h0;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;ZZLo0/u4;Ls/i;Lm1/h0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/v4;->l:Lf1/r;

    iput-boolean p2, p0, Lo0/v4;->m:Z

    iput-boolean p3, p0, Lo0/v4;->n:Z

    iput-object p4, p0, Lo0/v4;->o:Lo0/u4;

    iput-object p5, p0, Lo0/v4;->p:Ls/i;

    iput-object p6, p0, Lo0/v4;->q:Lm1/h0;

    iput p7, p0, Lo0/v4;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/v4;->r:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v0, p0, Lo0/v4;->l:Lf1/r;

    iget-boolean v1, p0, Lo0/v4;->m:Z

    iget-boolean v2, p0, Lo0/v4;->n:Z

    iget-object v3, p0, Lo0/v4;->o:Lo0/u4;

    iget-object v4, p0, Lo0/v4;->p:Ls/i;

    iget-object v5, p0, Lo0/v4;->q:Lm1/h0;

    invoke-static/range {v0 .. v7}, Lo0/w4;->b(Lf1/r;ZZLo0/u4;Ls/i;Lm1/h0;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
