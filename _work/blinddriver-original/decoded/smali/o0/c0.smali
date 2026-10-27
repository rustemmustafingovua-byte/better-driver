.class public final synthetic Lo0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Lm1/h0;

.field public final synthetic n:Lo0/a0;

.field public final synthetic o:Lo0/b0;

.field public final synthetic p:Lz0/d;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lm1/h0;Lo0/a0;Lo0/b0;Lz0/d;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/c0;->l:Lf1/r;

    iput-object p2, p0, Lo0/c0;->m:Lm1/h0;

    iput-object p3, p0, Lo0/c0;->n:Lo0/a0;

    iput-object p4, p0, Lo0/c0;->o:Lo0/b0;

    iput-object p5, p0, Lo0/c0;->p:Lz0/d;

    iput p6, p0, Lo0/c0;->q:I

    iput p7, p0, Lo0/c0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/c0;->q:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v0, p0, Lo0/c0;->l:Lf1/r;

    iget-object v1, p0, Lo0/c0;->m:Lm1/h0;

    iget-object v2, p0, Lo0/c0;->n:Lo0/a0;

    iget-object v3, p0, Lo0/c0;->o:Lo0/b0;

    iget-object v4, p0, Lo0/c0;->p:Lz0/d;

    iget v7, p0, Lo0/c0;->r:I

    invoke-static/range {v0 .. v7}, Lo0/z2;->c(Lf1/r;Lm1/h0;Lo0/a0;Lo0/b0;Lz0/d;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
