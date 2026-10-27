.class public final synthetic Ly4/r;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/i;


# static fields
.field public static final s:Ly4/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ly4/r;

    const-string v4, "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;"

    const/4 v5, 0x1

    const/4 v1, 0x6

    const-class v2, Ly4/s;

    const-string v3, "createSchedulers"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ly4/r;->s:Ly4/r;

    return-void
.end method
