.class public final synthetic Lod/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lu9/t;

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Ljd/b;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lu9/t;Lr0/u0;Ljd/b;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/f6;->l:Lu9/t;

    iput-object p2, p0, Lod/f6;->m:Lr0/u0;

    iput-object p3, p0, Lod/f6;->n:Ljd/b;

    iput-object p4, p0, Lod/f6;->o:Lr0/u0;

    iput-object p5, p0, Lod/f6;->p:Lr0/u0;

    iput-object p6, p0, Lod/f6;->q:Lr0/u0;

    iput-object p7, p0, Lod/f6;->r:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lod/f6;->m:Lr0/u0;

    invoke-interface {v7, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lf2/z2;

    const/4 v8, 0x0

    iget-object v2, p0, Lod/f6;->n:Ljd/b;

    iget-object v3, p0, Lod/f6;->o:Lr0/u0;

    iget-object v4, p0, Lod/f6;->p:Lr0/u0;

    iget-object v5, p0, Lod/f6;->q:Lr0/u0;

    iget-object v6, p0, Lod/f6;->r:Lr0/u0;

    invoke-direct/range {v1 .. v8}, Lf2/z2;-><init>(Ljd/b;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lod/f6;->l:Lu9/t;

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
