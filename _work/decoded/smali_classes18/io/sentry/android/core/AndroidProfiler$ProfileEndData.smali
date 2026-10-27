.class public Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
.super Ljava/lang/Object;
.source "AndroidProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AndroidProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileEndData"
.end annotation


# instance fields
.field public final didTimeout:Z

.field public final endCpuMillis:J

.field public final endNanos:J

.field public final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public final traceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(JJZLjava/io/File;Ljava/util/Map;)V
    .locals 0
    .param p1, "endNanos"    # J
    .param p3, "endCpuMillis"    # J
    .param p5, "didTimeout"    # Z
    .param p6, "traceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p7, "measurementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endNanos:J

    .line 63
    iput-object p6, p0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    .line 64
    iput-wide p3, p0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endCpuMillis:J

    .line 65
    iput-object p7, p0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->measurementsMap:Ljava/util/Map;

    .line 66
    iput-boolean p5, p0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->didTimeout:Z

    .line 67
    return-void
.end method
