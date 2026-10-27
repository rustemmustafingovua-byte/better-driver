.class public abstract Ln/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ln/d;->k:Ln/o1;

    new-instance v2, Lt8/j;

    invoke-direct {v2, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->q:Ln/o1;

    new-instance v3, Lt8/j;

    invoke-direct {v3, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->p:Ln/o1;

    new-instance v4, Lt8/j;

    invoke-direct {v4, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->j:Ln/o1;

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v6, v5

    new-instance v5, Lt8/j;

    invoke-direct {v5, v1, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->r:Ln/o1;

    new-instance v6, Lt8/j;

    invoke-direct {v6, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->n:Ln/o1;

    new-instance v7, Lt8/j;

    invoke-direct {v7, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ln/d;->o:Ln/o1;

    new-instance v8, Lt8/j;

    invoke-direct {v8, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ln/d;->l:Ln/o1;

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v9, Lt8/j;

    invoke-direct {v9, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ln/d;->m:Ln/o1;

    new-instance v10, Lt8/j;

    invoke-direct {v10, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v10}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ln/y1;->a:Ljava/lang/Object;

    return-void
.end method
