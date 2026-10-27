.class public final synthetic Lod/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/a;

.field public final synthetic m:Li9/a;

.field public final synthetic n:Li9/a;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Z

.field public final synthetic r:Li9/a;

.field public final synthetic s:Li9/a;

.field public final synthetic t:Li9/a;

.field public final synthetic u:Lf1/r;


# direct methods
.method public synthetic constructor <init>(Li9/a;Li9/a;Li9/a;Ljava/lang/String;Ljava/lang/String;ZLi9/a;Li9/a;Li9/a;Lf1/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/l3;->l:Li9/a;

    iput-object p2, p0, Lod/l3;->m:Li9/a;

    iput-object p3, p0, Lod/l3;->n:Li9/a;

    iput-object p4, p0, Lod/l3;->o:Ljava/lang/String;

    iput-object p5, p0, Lod/l3;->p:Ljava/lang/String;

    iput-boolean p6, p0, Lod/l3;->q:Z

    iput-object p7, p0, Lod/l3;->r:Li9/a;

    iput-object p8, p0, Lod/l3;->s:Li9/a;

    iput-object p9, p0, Lod/l3;->t:Li9/a;

    iput-object p10, p0, Lod/l3;->u:Lf1/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v0, p0, Lod/l3;->l:Li9/a;

    iget-object v1, p0, Lod/l3;->m:Li9/a;

    iget-object v2, p0, Lod/l3;->n:Li9/a;

    iget-object v3, p0, Lod/l3;->o:Ljava/lang/String;

    iget-object v4, p0, Lod/l3;->p:Ljava/lang/String;

    iget-boolean v5, p0, Lod/l3;->q:Z

    iget-object v6, p0, Lod/l3;->r:Li9/a;

    iget-object v7, p0, Lod/l3;->s:Li9/a;

    iget-object v8, p0, Lod/l3;->t:Li9/a;

    iget-object v9, p0, Lod/l3;->u:Lf1/r;

    invoke-static/range {v0 .. v11}, Lod/e4;->o(Li9/a;Li9/a;Li9/a;Ljava/lang/String;Ljava/lang/String;ZLi9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
