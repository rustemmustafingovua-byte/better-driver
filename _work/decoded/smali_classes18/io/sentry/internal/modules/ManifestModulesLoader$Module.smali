.class final Lio/sentry/internal/modules/ManifestModulesLoader$Module;
.super Ljava/lang/Object;
.source "ManifestModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/internal/modules/ManifestModulesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Module"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->name:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->version:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    .line 92
    iget-object v0, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    .line 92
    iget-object v0, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->version:Ljava/lang/String;

    return-object v0
.end method
