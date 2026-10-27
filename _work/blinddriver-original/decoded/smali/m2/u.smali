.class public abstract Lm2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm2/w;

.field public static final b:Lm2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lm2/w;

    const/4 v1, 0x0

    sget-object v2, Lm2/k;->D:Lm2/k;

    const-string v3, "TestTagsAsResourceId"

    invoke-direct {v0, v3, v1, v2}, Lm2/w;-><init>(Ljava/lang/String;ZLi9/e;)V

    sput-object v0, Lm2/u;->a:Lm2/w;

    sget-object v0, Lm2/k;->C:Lm2/k;

    new-instance v1, Lm2/w;

    const/4 v2, 0x1

    const-string v3, "AccessibilityClassName"

    invoke-direct {v1, v3, v2, v0}, Lm2/w;-><init>(Ljava/lang/String;ZLi9/e;)V

    sput-object v1, Lm2/u;->b:Lm2/w;

    return-void
.end method
