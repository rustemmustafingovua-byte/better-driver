.class public final synthetic Lod/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:[D

.field public final synthetic o:Landroid/content/SharedPreferences;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;I)V
    .locals 0

    iput p7, p0, Lod/j1;->l:I

    iput-boolean p1, p0, Lod/j1;->m:Z

    iput-object p2, p0, Lod/j1;->n:[D

    iput-object p3, p0, Lod/j1;->o:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lod/j1;->p:Lr0/u0;

    iput-object p5, p0, Lod/j1;->q:Lr0/u0;

    iput-object p6, p0, Lod/j1;->r:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lod/j1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v6, p0, Lod/j1;->r:Lr0/u0;

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    iget-boolean v1, p0, Lod/j1;->m:Z

    iget-object v2, p0, Lod/j1;->n:[D

    iget-object v3, p0, Lod/j1;->o:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lod/j1;->p:Lr0/u0;

    iget-object v5, p0, Lod/j1;->q:Lr0/u0;

    invoke-static/range {v1 .. v8}, Lod/g3;->N(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;D)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v5, p0, Lod/j1;->r:Lr0/u0;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    iget-boolean v0, p0, Lod/j1;->m:Z

    iget-object v1, p0, Lod/j1;->n:[D

    iget-object v2, p0, Lod/j1;->o:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lod/j1;->p:Lr0/u0;

    iget-object v4, p0, Lod/j1;->q:Lr0/u0;

    invoke-static/range {v0 .. v7}, Lod/g3;->N(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;D)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
