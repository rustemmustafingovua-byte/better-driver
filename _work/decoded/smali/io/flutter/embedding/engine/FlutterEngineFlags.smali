.class public final Lio/flutter/embedding/engine/FlutterEngineFlags;
.super Ljava/lang/Object;
.source "FlutterEngineFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    }
.end annotation


# static fields
.field public static final ALL_FLAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public static final AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final DART_FLAGS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEPRECATED_FLAGS_BY_REPLACEMENT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPRECATED_FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DISABLED_FLAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final DISABLE_SERVICE_AUTH_CODES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final DUMP_SKP_ON_SHADER_COMPILATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENABLE_DART_PROFILING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENABLE_FLUTTER_GPU:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENABLE_HCPP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENABLE_IMPELLER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENABLE_VULKAN_VALIDATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final ENDLESS_TRACE_BUFFER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final FLAG_BY_COMMAND_LINE_ARG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_BY_META_DATA_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final IMPELLER_ANTIALIAS_LINES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final IMPELLER_BACKEND:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final IMPELLER_LAZY_SHADER_MODER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final IMPELLER_OPENGL_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final IMPELLER_VULKAN_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final ISOLATE_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final LEAK_VM:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final OLD_GEN_HEAP_SIZE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final PROFILE_MICROTASKS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final PROFILE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final PURGE_PERSISTENT_CACHE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final SKIA_DETERMINISTIC_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final START_PAUSED:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final TEST_FLAG:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final TRACE_SKIA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final TRACE_SKIA_ALLOWLIST:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final TRACE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final TRACE_SYSTRACE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final TRACE_TO_FILE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final USE_TEST_FONTS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final VERBOSE_LOGGING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field private static final VM_SERVICE_PORT:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

.field public static final VM_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 99
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--aot-shared-library-name="

    const-string v2, "AOTSharedLibraryName"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 109
    new-instance v5, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v6, "--aot-shared-library-name="

    const-string v7, "aot-shared-library-name"

    const-string v8, "io.flutter.embedding.engine.loader.FlutterLoader."

    invoke-direct/range {v5 .. v10}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 122
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--flutter-assets-dir="

    const-string v2, "FlutterAssetsDir"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 131
    new-instance v5, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v6, "--flutter-assets-dir="

    const-string v7, "flutter-assets-dir"

    const-string v8, "io.flutter.embedding.engine.loader.FlutterLoader."

    invoke-direct/range {v5 .. v10}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 143
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--old-gen-heap-size="

    const-string v2, "OldGenHeapSize"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->OLD_GEN_HEAP_SIZE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 152
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-impeller="

    const-string v2, "EnableImpeller"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_IMPELLER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 161
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--impeller-backend="

    const-string v2, "ImpellerBackend"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_BACKEND:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 170
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-dart-profiling"

    const-string v2, "EnableDartProfiling"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_DART_PROFILING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 180
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--profile-startup"

    const-string v2, "ProfileStartup"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->PROFILE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 188
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--trace-startup"

    const-string v2, "TraceStartup"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 195
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--merged-platform-ui-thread"

    const-string v2, "MergedPlatformUIThread"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 204
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--vm-snapshot-data="

    const-string v2, "VmSnapshotData"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 213
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--isolate-snapshot-data="

    const-string v2, "IsolateSnapshotData"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ISOLATE_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 222
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-hcpp-and-surface-control"

    const-string v2, "EnableHcpp"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_HCPP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 231
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-flutter-gpu"

    const-string v2, "EnableFlutterGPU"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_FLUTTER_GPU:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 240
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--impeller-lazy-shader-mode"

    const-string v2, "ImpellerLazyShaderInitialization"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_LAZY_SHADER_MODER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 249
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--impeller-antialias-lines"

    const-string v2, "ImpellerAntialiasLines"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_ANTIALIAS_LINES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 259
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-opengl-gpu-tracing"

    const-string v2, "EnableOpenGLGPUTracing"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_OPENGL_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 267
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-vulkan-gpu-tracing"

    const-string v2, "EnableVulkanGPUTracing"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_VULKAN_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 275
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--skia-deterministic-rendering"

    const-string v2, "SkiaDeterministicRendering"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->SKIA_DETERMINISTIC_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 283
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-software-rendering"

    const-string v2, "EnableSoftwareRendering"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 291
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--use-test-fonts"

    const-string v2, "UseTestFonts"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->USE_TEST_FONTS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 298
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--vm-service-port="

    const-string v2, "VMServicePort"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SERVICE_PORT:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 305
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--enable-vulkan-validation"

    const-string v2, "EnableVulkanValidation"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_VULKAN_VALIDATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 313
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--test-flag"

    const-string v2, "TestFlag"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TEST_FLAG:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 328
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--leak-vm="

    const-string v2, "LeakVM"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->LEAK_VM:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 335
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--start-paused"

    const-string v2, "StartPaused"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->START_PAUSED:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 342
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--disable-service-auth-codes"

    const-string v2, "DisableServiceAuthCodes"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLE_SERVICE_AUTH_CODES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 350
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--endless-trace-buffer"

    const-string v2, "EndlessTraceBuffer"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENDLESS_TRACE_BUFFER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 358
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--trace-skia"

    const-string v2, "TraceSkia"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SKIA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 365
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--trace-skia-allowlist="

    const-string v2, "TraceSkiaAllowList"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SKIA_ALLOWLIST:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 373
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--trace-systrace"

    const-string v2, "TraceSystrace"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SYSTRACE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 380
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--trace-to-file="

    const-string v2, "TraceToFile"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_TO_FILE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 387
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--profile-microtasks"

    const-string v2, "ProfileMicrotasks"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->PROFILE_MICROTASKS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 395
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--dump-skp-on-shader-compilation"

    const-string v2, "DumpSkpOnShaderCompilation"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DUMP_SKP_ON_SHADER_COMPILATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 403
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--purge-persistent-cache"

    const-string v2, "PurgePersistentCache"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->PURGE_PERSISTENT_CACHE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 411
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--verbose-logging"

    const-string v2, "VerboseLogging"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->VERBOSE_LOGGING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 424
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--dart-flags="

    const-string v2, "DartFlags"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DART_FLAGS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 432
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const-string v1, "--no-enable-merged-platform-ui-thread"

    const-string v2, "DisableMergedPlatformUIThread"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLE_MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 436
    const/16 v0, 0x27

    new-array v0, v0, [Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SERVICE_PORT:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->USE_TEST_FONTS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->SKIA_DETERMINISTIC_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_IMPELLER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_BACKEND:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_VULKAN_VALIDATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x9

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->START_PAUSED:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xa

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLE_SERVICE_AUTH_CODES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xb

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENDLESS_TRACE_BUFFER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xc

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_DART_PROFILING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xd

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->PROFILE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xe

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SKIA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0xf

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SKIA_ALLOWLIST:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x10

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_SYSTRACE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x11

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_TO_FILE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x12

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->PROFILE_MICROTASKS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x13

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DUMP_SKP_ON_SHADER_COMPILATION:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x14

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->VERBOSE_LOGGING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x15

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DART_FLAGS:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x16

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x17

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLE_MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x18

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x19

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->OLD_GEN_HEAP_SIZE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ISOLATE_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->PURGE_PERSISTENT_CACHE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TRACE_STARTUP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->LEAK_VM:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x20

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->TEST_FLAG:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x21

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_FLUTTER_GPU:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x22

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_LAZY_SHADER_MODER:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x23

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_ANTIALIAS_LINES:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x24

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_OPENGL_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x25

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->IMPELLER_VULKAN_GPU_TRACING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    const/16 v1, 0x26

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_HCPP:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v4, v0, v1

    .line 438
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 437
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->ALL_FLAGS:Ljava/util/List;

    .line 480
    new-array v0, v3, [Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLE_MERGED_PLATFORM_UI_THREAD:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    aput-object v1, v0, v2

    .line 481
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLED_FLAGS:Ljava/util/List;

    .line 484
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineFlags$1;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterEngineFlags$1;-><init>()V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLAGS_BY_REPLACEMENT:Ljava/util/Map;

    .line 499
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->ALL_FLAGS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 500
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;>;"
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lio/flutter/embedding/engine/FlutterEngineFlags;->ALL_FLAGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 501
    .local v1, "metaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;>;"
    sget-object v2, Lio/flutter/embedding/engine/FlutterEngineFlags;->ALL_FLAGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 502
    .local v3, "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    iget-object v4, v3, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v4, v3, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v3    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    goto :goto_0

    .line 505
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLAG_BY_COMMAND_LINE_ARG:Ljava/util/Map;

    .line 506
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLAG_BY_META_DATA_KEY:Ljava/util/Map;

    .line 507
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;>;"
    .end local v1    # "metaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlagByEngineArgument(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;

    .line 511
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 512
    .local v0, "equalsIndex":I
    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLAG_BY_COMMAND_LINE_ARG:Ljava/util/Map;

    .line 513
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 514
    .local v1, "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    invoke-static {v1}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getReplacementFlagIfDeprecated(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v2

    .line 515
    .local v2, "replacementFlag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method public static getFlagFromIntentKey(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .locals 3
    .param p0, "intentKey"    # Ljava/lang/String;

    .line 526
    invoke-static {p0}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getFlagByEngineArgument(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v0

    .line 528
    .local v0, "toReturn":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    const-string v1, "--"

    if-nez v0, :cond_0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getFlagByEngineArgument(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v0

    .line 531
    :cond_0
    if-nez v0, :cond_1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getFlagByEngineArgument(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v0

    .line 535
    :cond_1
    return-object v0
.end method

.method public static getReplacementFlagIfDeprecated(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .locals 1
    .param p0, "flag"    # Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 545
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLAGS_BY_REPLACEMENT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    return-object v0
.end method

.method public static isDisabled(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Z
    .locals 1
    .param p0, "flag"    # Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 540
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DISABLED_FLAGS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
