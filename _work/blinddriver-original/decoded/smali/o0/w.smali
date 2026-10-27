.class public final synthetic Lo0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/a;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Z

.field public final synthetic o:Lm1/h0;

.field public final synthetic p:Lo0/p;

.field public final synthetic q:Lp/x;

.field public final synthetic r:Lu/s0;

.field public final synthetic s:Li9/f;

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/w;->l:Li9/a;

    iput-object p2, p0, Lo0/w;->m:Lf1/r;

    iput-boolean p3, p0, Lo0/w;->n:Z

    iput-object p4, p0, Lo0/w;->o:Lm1/h0;

    iput-object p5, p0, Lo0/w;->p:Lo0/p;

    iput-object p6, p0, Lo0/w;->q:Lp/x;

    iput-object p7, p0, Lo0/w;->r:Lu/s0;

    iput-object p8, p0, Lo0/w;->s:Li9/f;

    iput p9, p0, Lo0/w;->t:I

    iput p10, p0, Lo0/w;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/w;->t:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lo0/w;->l:Li9/a;

    iget-object v1, p0, Lo0/w;->m:Lf1/r;

    iget-boolean v2, p0, Lo0/w;->n:Z

    iget-object v3, p0, Lo0/w;->o:Lm1/h0;

    iget-object v4, p0, Lo0/w;->p:Lo0/p;

    iget-object v5, p0, Lo0/w;->q:Lp/x;

    iget-object v6, p0, Lo0/w;->r:Lu/s0;

    iget-object v7, p0, Lo0/w;->s:Li9/f;

    iget v10, p0, Lo0/w;->u:I

    invoke-static/range {v0 .. v10}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
