.class public abstract Lod/f7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lt8/j;

    const-string v1, "month"

    const-string v2, "1 \u043c\u0456\u0441\u044f\u0446\u044c"

    invoke-direct {v0, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v2, "m3"

    const-string v3, "3 \u043c\u0456\u0441\u044f\u0446\u0456"

    invoke-direct {v1, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "m6"

    const-string v4, "6 \u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v4, "year"

    const-string v5, "1 \u0440\u0456\u043a"

    invoke-direct {v3, v4, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lod/f7;->a:Ljava/util/List;

    return-void
.end method
