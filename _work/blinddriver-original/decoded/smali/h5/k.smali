.class public final Lh5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh5/k;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh5/k;->a:Lh5/k;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lh5/k;->b:Ljava/util/WeakHashMap;

    return-void
.end method
