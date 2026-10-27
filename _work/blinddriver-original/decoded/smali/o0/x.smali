.class public final synthetic Lo0/x;
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

.field public final synthetic q:Lu/s0;

.field public final synthetic r:Li9/f;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/x;->l:Li9/a;

    iput-object p2, p0, Lo0/x;->m:Lf1/r;

    iput-boolean p3, p0, Lo0/x;->n:Z

    iput-object p4, p0, Lo0/x;->o:Lm1/h0;

    iput-object p5, p0, Lo0/x;->p:Lo0/p;

    iput-object p6, p0, Lo0/x;->q:Lu/s0;

    iput-object p7, p0, Lo0/x;->r:Li9/f;

    iput p8, p0, Lo0/x;->s:I

    iput p9, p0, Lo0/x;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/x;->s:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v0, p0, Lo0/x;->l:Li9/a;

    iget-object v1, p0, Lo0/x;->m:Lf1/r;

    iget-boolean v2, p0, Lo0/x;->n:Z

    iget-object v3, p0, Lo0/x;->o:Lm1/h0;

    iget-object v4, p0, Lo0/x;->p:Lo0/p;

    iget-object v5, p0, Lo0/x;->q:Lu/s0;

    iget-object v6, p0, Lo0/x;->r:Li9/f;

    iget v9, p0, Lo0/x;->t:I

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
