.class public final Le7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le7/e;


# instance fields
.field public final a:Lf7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Le7/e;

    invoke-direct {v2, v0, v1}, Le7/e;-><init>(Lf7/a;Landroid/os/Looper;)V

    sput-object v2, Le7/e;->b:Le7/e;

    return-void
.end method

.method public constructor <init>(Lf7/a;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/e;->a:Lf7/a;

    return-void
.end method
