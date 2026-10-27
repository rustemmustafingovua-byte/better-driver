.class public final synthetic Lo0/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Ln/i0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lp/a2;

.field public final synthetic p:Lm1/h0;

.field public final synthetic q:J

.field public final synthetic r:F

.field public final synthetic s:F

.field public final synthetic t:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/r1;->l:Lf1/r;

    iput-object p2, p0, Lo0/r1;->m:Ln/i0;

    iput-object p3, p0, Lo0/r1;->n:Lr0/u0;

    iput-object p4, p0, Lo0/r1;->o:Lp/a2;

    iput-object p5, p0, Lo0/r1;->p:Lm1/h0;

    iput-wide p6, p0, Lo0/r1;->q:J

    iput p8, p0, Lo0/r1;->r:F

    iput p9, p0, Lo0/r1;->s:F

    iput-object p10, p0, Lo0/r1;->t:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v0, p0, Lo0/r1;->l:Lf1/r;

    iget-object v1, p0, Lo0/r1;->m:Ln/i0;

    iget-object v2, p0, Lo0/r1;->n:Lr0/u0;

    iget-object v3, p0, Lo0/r1;->o:Lp/a2;

    iget-object v4, p0, Lo0/r1;->p:Lm1/h0;

    iget-wide v5, p0, Lo0/r1;->q:J

    iget v7, p0, Lo0/r1;->r:F

    iget v8, p0, Lo0/r1;->s:F

    iget-object v9, p0, Lo0/r1;->t:Lz0/d;

    invoke-static/range {v0 .. v11}, Lo0/u1;->a(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
