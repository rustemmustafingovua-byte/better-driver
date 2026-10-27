.class public final Lua/nav/billing/TrialReminderWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# static fields
.field public static final Companion:Luc/h;


# instance fields
.field public final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luc/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/billing/TrialReminderWorker;->Companion:Luc/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lua/nav/billing/TrialReminderWorker;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Ly8/c;)Ljava/lang/Object;
    .locals 7

    new-instance p0, Lx4/q;

    invoke-direct {p0}, Lx4/q;-><init>()V

    return-object p0
.end method
