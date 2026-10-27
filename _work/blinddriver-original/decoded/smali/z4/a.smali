.class public final Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Lz4/c;

.field public final b:Lq3/k;

.field public final c:Lx4/j;

.field public final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz4/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lz4/c;Lq3/k;Lx4/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/a;->a:Lz4/c;

    iput-object p2, p0, Lz4/a;->b:Lq3/k;

    iput-object p3, p0, Lz4/a;->c:Lx4/j;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz4/a;->d:Ljava/util/HashMap;

    return-void
.end method
