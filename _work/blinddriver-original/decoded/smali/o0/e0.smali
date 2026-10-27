.class public final Lo0/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm1/g;

.field public final b:Lm1/h;

.field public final c:Lm1/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    new-instance v1, Lm1/h;

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    invoke-direct {v1, v2}, Lm1/h;-><init>(Landroid/graphics/PathMeasure;)V

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo0/e0;->a:Lm1/g;

    iput-object v1, p0, Lo0/e0;->b:Lm1/h;

    iput-object v2, p0, Lo0/e0;->c:Lm1/g;

    return-void
.end method
