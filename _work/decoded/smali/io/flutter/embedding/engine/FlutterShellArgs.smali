.class public Lio/flutter/embedding/engine/FlutterShellArgs;
.super Ljava/lang/Object;
.source "FlutterShellArgs.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARG_CACHE_SKSL:Ljava/lang/String; = "--cache-sksl"

.field public static final ARG_DART_FLAGS:Ljava/lang/String; = "--dart-flags"

.field public static final ARG_DISABLE_HCPP_AND_SURFACE_CONTROL:Ljava/lang/String; = "--enable-hcpp-and-surface-control=false"

.field public static final ARG_DISABLE_IMPELLER:Ljava/lang/String; = "--enable-impeller=false"

.field public static final ARG_DISABLE_SERVICE_AUTH_CODES:Ljava/lang/String; = "--disable-service-auth-codes"

.field public static final ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION:Ljava/lang/String; = "--dump-skp-on-shader-compilation"

.field public static final ARG_ENABLE_DART_PROFILING:Ljava/lang/String; = "--enable-dart-profiling"

.field public static final ARG_ENABLE_HCPP_AND_SURFACE_CONTROL:Ljava/lang/String; = "--enable-hcpp-and-surface-control=true"

.field public static final ARG_ENABLE_IMPELLER:Ljava/lang/String; = "--enable-impeller=true"

.field public static final ARG_ENABLE_SOFTWARE_RENDERING:Ljava/lang/String; = "--enable-software-rendering"

.field public static final ARG_ENABLE_VULKAN_VALIDATION:Ljava/lang/String; = "--enable-vulkan-validation"

.field public static final ARG_ENDLESS_TRACE_BUFFER:Ljava/lang/String; = "--endless-trace-buffer"

.field public static final ARG_KEY_CACHE_SKSL:Ljava/lang/String; = "cache-sksl"

.field public static final ARG_KEY_DART_FLAGS:Ljava/lang/String; = "dart-flags"

.field public static final ARG_KEY_DISABLE_SERVICE_AUTH_CODES:Ljava/lang/String; = "disable-service-auth-codes"

.field public static final ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION:Ljava/lang/String; = "dump-skp-on-shader-compilation"

.field public static final ARG_KEY_ENABLE_DART_PROFILING:Ljava/lang/String; = "enable-dart-profiling"

.field public static final ARG_KEY_ENABLE_HCPP_AND_SURFACE_CONTROL:Ljava/lang/String; = "enable-hcpp-and-surface-control"

.field public static final ARG_KEY_ENABLE_SOFTWARE_RENDERING:Ljava/lang/String; = "enable-software-rendering"

.field public static final ARG_KEY_ENABLE_VULKAN_VALIDATION:Ljava/lang/String; = "enable-vulkan-validation"

.field public static final ARG_KEY_ENDLESS_TRACE_BUFFER:Ljava/lang/String; = "endless-trace-buffer"

.field public static final ARG_KEY_PROFILE_MICROTASKS:Ljava/lang/String; = "profile-microtasks"

.field public static final ARG_KEY_PROFILE_STARTUP:Ljava/lang/String; = "profile-startup"

.field public static final ARG_KEY_PURGE_PERSISTENT_CACHE:Ljava/lang/String; = "purge-persistent-cache"

.field public static final ARG_KEY_SKIA_DETERMINISTIC_RENDERING:Ljava/lang/String; = "skia-deterministic-rendering"

.field public static final ARG_KEY_START_PAUSED:Ljava/lang/String; = "start-paused"

.field public static final ARG_KEY_TOGGLE_IMPELLER:Ljava/lang/String; = "enable-impeller"

.field public static final ARG_KEY_TRACE_SKIA:Ljava/lang/String; = "trace-skia"

.field public static final ARG_KEY_TRACE_SKIA_ALLOWLIST:Ljava/lang/String; = "trace-skia-allowlist"

.field public static final ARG_KEY_TRACE_STARTUP:Ljava/lang/String; = "trace-startup"

.field public static final ARG_KEY_TRACE_SYSTRACE:Ljava/lang/String; = "trace-systrace"

.field public static final ARG_KEY_TRACE_TO_FILE:Ljava/lang/String; = "trace-to-file"

.field public static final ARG_KEY_USE_TEST_FONTS:Ljava/lang/String; = "use-test-fonts"

.field public static final ARG_KEY_VERBOSE_LOGGING:Ljava/lang/String; = "verbose-logging"

.field public static final ARG_KEY_VM_SERVICE_PORT:Ljava/lang/String; = "vm-service-port"

.field public static final ARG_PROFILE_MICROTASKS:Ljava/lang/String; = "--profile-microtasks"

.field public static final ARG_PROFILE_STARTUP:Ljava/lang/String; = "--profile-startup"

.field public static final ARG_PURGE_PERSISTENT_CACHE:Ljava/lang/String; = "--purge-persistent-cache"

.field public static final ARG_SKIA_DETERMINISTIC_RENDERING:Ljava/lang/String; = "--skia-deterministic-rendering"

.field public static final ARG_START_PAUSED:Ljava/lang/String; = "--start-paused"

.field public static final ARG_TRACE_SKIA:Ljava/lang/String; = "--trace-skia"

.field public static final ARG_TRACE_SKIA_ALLOWLIST:Ljava/lang/String; = "--trace-skia-allowlist="

.field public static final ARG_TRACE_STARTUP:Ljava/lang/String; = "--trace-startup"

.field public static final ARG_TRACE_SYSTRACE:Ljava/lang/String; = "--trace-systrace"

.field public static final ARG_TRACE_TO_FILE:Ljava/lang/String; = "--trace-to-file"

.field public static final ARG_USE_TEST_FONTS:Ljava/lang/String; = "--use-test-fonts"

.field public static final ARG_VERBOSE_LOGGING:Ljava/lang/String; = "--verbose-logging"

.field public static final ARG_VM_SERVICE_PORT:Ljava/lang/String; = "--vm-service-port="


# instance fields
.field private args:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "args":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 199
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 186
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "trace-startup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "--trace-startup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    const-string v1, "start-paused"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "--start-paused"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    const-string v1, "vm-service-port"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "vmServicePort":I
    if-lez v1, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--vm-service-port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    const-string v3, "disable-service-auth-codes"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    const-string v3, "--disable-service-auth-codes"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    const-string v3, "endless-trace-buffer"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    const-string v3, "--endless-trace-buffer"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    const-string v3, "use-test-fonts"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    const-string v3, "--use-test-fonts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_5
    const-string v3, "enable-dart-profiling"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 110
    const-string v3, "--enable-dart-profiling"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    const-string v3, "profile-startup"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    const-string v3, "--profile-startup"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_7
    const-string v3, "enable-software-rendering"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 116
    const-string v3, "--enable-software-rendering"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_8
    const-string v3, "skia-deterministic-rendering"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 119
    const-string v3, "--skia-deterministic-rendering"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_9
    const-string v3, "trace-skia"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 122
    const-string v3, "--trace-skia"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_a
    const-string v3, "trace-skia-allowlist"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "traceSkiaAllowlist":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--trace-skia-allowlist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_b
    const-string v4, "trace-systrace"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 129
    const-string v4, "--trace-systrace"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_c
    const-string v4, "trace-to-file"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--trace-to-file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_d
    const-string v4, "profile-microtasks"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 135
    const-string v4, "--profile-microtasks"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_e
    const-string v4, "enable-impeller"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 138
    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 139
    const-string v4, "--enable-impeller=true"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_f
    const-string v4, "--enable-impeller=false"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_10
    :goto_0
    const-string v4, "enable-vulkan-validation"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 145
    const-string v4, "--enable-vulkan-validation"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_11
    const-string v4, "enable-hcpp-and-surface-control"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 148
    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 149
    const-string v4, "--enable-hcpp-and-surface-control=true"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_12
    const-string v4, "--enable-hcpp-and-surface-control=false"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_13
    :goto_1
    const-string v4, "dump-skp-on-shader-compilation"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 156
    const-string v4, "--dump-skp-on-shader-compilation"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_14
    const-string v4, "cache-sksl"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 159
    const-string v4, "--cache-sksl"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_15
    const-string v4, "purge-persistent-cache"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 162
    const-string v4, "--purge-persistent-cache"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_16
    const-string v4, "verbose-logging"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 165
    const-string v2, "--verbose-logging"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_17
    const-string v2, "dart-flags"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--dart-flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_18
    new-instance v2, Lio/flutter/embedding/engine/FlutterShellArgs;

    invoke-direct {v2, v0}, Lio/flutter/embedding/engine/FlutterShellArgs;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public toArray()[Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 228
    .local v0, "argsArray":[Ljava/lang/String;
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
