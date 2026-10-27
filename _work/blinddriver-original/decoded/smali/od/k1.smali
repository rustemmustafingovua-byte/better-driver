.class public final synthetic Lod/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Z

.field public final synthetic n:Li9/a;

.field public final synthetic o:Li9/a;

.field public final synthetic p:J

.field public final synthetic q:Lm1/p;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/k1;->l:Ljava/lang/String;

    iput-boolean p2, p0, Lod/k1;->m:Z

    iput-object p3, p0, Lod/k1;->n:Li9/a;

    iput-object p4, p0, Lod/k1;->o:Li9/a;

    iput-wide p5, p0, Lod/k1;->p:J

    iput-object p7, p0, Lod/k1;->q:Lm1/p;

    iput p9, p0, Lod/k1;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v0, p0, Lod/k1;->l:Ljava/lang/String;

    iget-boolean v1, p0, Lod/k1;->m:Z

    iget-object v2, p0, Lod/k1;->n:Li9/a;

    iget-object v3, p0, Lod/k1;->o:Li9/a;

    iget-wide v4, p0, Lod/k1;->p:J

    iget-object v6, p0, Lod/k1;->q:Lm1/p;

    iget v9, p0, Lod/k1;->r:I

    invoke-static/range {v0 .. v9}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
