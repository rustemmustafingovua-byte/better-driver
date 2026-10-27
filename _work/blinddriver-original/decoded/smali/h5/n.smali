.class public final Lh5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li5/a;

.field public final b:Ly4/e;

.field public final c:Lg5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ly4/e;Li5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh5/n;->b:Ly4/e;

    iput-object p3, p0, Lh5/n;->a:Li5/a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object p1

    iput-object p1, p0, Lh5/n;->c:Lg5/q;

    return-void
.end method
