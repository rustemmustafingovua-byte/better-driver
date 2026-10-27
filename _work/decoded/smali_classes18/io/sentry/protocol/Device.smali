.class public final Lio/sentry/protocol/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Device$DeviceOrientation;,
        Lio/sentry/protocol/Device$JsonKeys;,
        Lio/sentry/protocol/Device$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "device"


# instance fields
.field private archs:[Ljava/lang/String;

.field private batteryLevel:Ljava/lang/Float;

.field private batteryTemperature:Ljava/lang/Float;

.field private bootTime:Ljava/util/Date;

.field private brand:Ljava/lang/String;

.field private charging:Ljava/lang/Boolean;

.field private chipset:Ljava/lang/String;

.field private connectionEffectiveType:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private cpuDescription:Ljava/lang/String;

.field private externalFreeStorage:Ljava/lang/Long;

.field private externalStorageSize:Ljava/lang/Long;

.field private family:Ljava/lang/String;

.field private freeMemory:Ljava/lang/Long;

.field private freeStorage:Ljava/lang/Long;

.field private id:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private lowMemory:Ljava/lang/Boolean;

.field private manufacturer:Ljava/lang/String;

.field private memorySize:Ljava/lang/Long;

.field private model:Ljava/lang/String;

.field private modelId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private online:Ljava/lang/Boolean;

.field private orientation:Lio/sentry/protocol/Device$DeviceOrientation;

.field private processorCount:Ljava/lang/Integer;

.field private processorFrequency:Ljava/lang/Double;

.field private screenDensity:Ljava/lang/Float;

.field private screenDpi:Ljava/lang/Integer;

.field private screenHeightPixels:Ljava/lang/Integer;

.field private screenWidthPixels:Ljava/lang/Integer;

.field private simulator:Ljava/lang/Boolean;

.field private storageSize:Ljava/lang/Long;

.field private timezone:Ljava/util/TimeZone;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private usableMemory:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/Device;)V
    .locals 3
    .param p1, "device"    # Lio/sentry/protocol/Device;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iget-object v0, p1, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    .line 165
    iget-object v0, p1, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    .line 166
    iget-object v0, p1, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    iput-object v0, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 167
    iget-object v0, p1, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    .line 168
    iget-object v0, p1, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    .line 169
    iget-object v0, p1, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    .line 170
    iget-object v0, p1, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    .line 171
    iget-object v0, p1, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    .line 172
    iget-object v0, p1, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    .line 173
    iget-object v0, p1, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    .line 174
    iget-object v0, p1, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    .line 175
    iget-object v0, p1, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    .line 176
    iget-object v0, p1, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    .line 177
    iget-object v0, p1, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    .line 178
    iget-object v0, p1, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    .line 179
    iget-object v0, p1, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    .line 180
    iget-object v0, p1, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    .line 181
    iget-object v0, p1, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    .line 185
    iget-object v0, p1, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    .line 186
    iget-object v0, p1, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    .line 187
    .local v0, "archsRef":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    .line 188
    iget-object v2, p1, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    iput-object v2, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    .line 190
    iget-object v2, p1, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    .line 191
    .local v2, "timezoneRef":Ljava/util/TimeZone;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    :cond_1
    iput-object v1, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    .line 193
    iget-object v1, p1, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    iput-object v1, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    .line 194
    iget-object v1, p1, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    iput-object v1, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    .line 195
    iget-object v1, p1, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    iput-object v1, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    .line 196
    iget-object v1, p1, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    iput-object v1, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    .line 198
    iget-object v1, p1, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    .line 199
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/Device;Lio/sentry/protocol/Device$DeviceOrientation;)Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Lio/sentry/protocol/Device$DeviceOrientation;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1702(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1802(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1902(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2002(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2202(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Float;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$2302(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2402(Lio/sentry/protocol/Device;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/util/Date;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2502(Lio/sentry/protocol/Device;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/util/TimeZone;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    return-object p1
.end method

.method static synthetic access$2602(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Float;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$3002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$3202(Lio/sentry/protocol/Device;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$3302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3402(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/Device;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Float;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Device;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 23
    iput-object p1, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 482
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 483
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 484
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/Device;

    .line 485
    .local v2, "device":Lio/sentry/protocol/Device;
    iget-object v3, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    .line 486
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    .line 487
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    .line 488
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    .line 489
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    .line 490
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    .line 491
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    iget-object v4, v2, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    .line 492
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    .line 493
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    .line 494
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    iget-object v4, v2, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    .line 496
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    .line 497
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    .line 498
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    .line 499
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    .line 500
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    .line 501
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    .line 502
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    .line 503
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    .line 504
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    .line 505
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    .line 506
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    iget-object v4, v2, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    .line 507
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    .line 508
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    iget-object v4, v2, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    .line 509
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    .line 510
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    .line 511
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    .line 512
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    .line 513
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    iget-object v4, v2, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    .line 514
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    .line 515
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    iget-object v4, v2, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    .line 516
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    .line 517
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    .line 518
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 485
    :goto_0
    return v0

    .line 483
    .end local v2    # "device":Lio/sentry/protocol/Device;
    :cond_3
    :goto_1
    return v1
.end method

.method public getArchs()[Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/Float;
    .locals 1

    .line 250
    iget-object v0, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public getBatteryTemperature()Ljava/lang/Float;
    .locals 1

    .line 441
    iget-object v0, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getBootTime()Ljava/util/Date;
    .locals 1

    .line 371
    iget-object v0, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getChipset()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionEffectiveType()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuDescription()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalFreeStorage()Ljava/lang/Long;
    .locals 1

    .line 346
    iget-object v0, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    return-object v0
.end method

.method public getExternalStorageSize()Ljava/lang/Long;
    .locals 1

    .line 338
    iget-object v0, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeMemory()Ljava/lang/Long;
    .locals 1

    .line 298
    iget-object v0, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public getFreeStorage()Ljava/lang/Long;
    .locals 1

    .line 330
    iget-object v0, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMemorySize()Ljava/lang/Long;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1

    .line 274
    iget-object v0, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object v0
.end method

.method public getProcessorCount()Ljava/lang/Integer;
    .locals 1

    .line 449
    iget-object v0, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProcessorFrequency()Ljava/lang/Double;
    .locals 1

    .line 457
    iget-object v0, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/Float;
    .locals 1

    .line 354
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    return-object v0
.end method

.method public getScreenDpi()Ljava/lang/Integer;
    .locals 1

    .line 362
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScreenHeightPixels()Ljava/lang/Integer;
    .locals 1

    .line 403
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScreenWidthPixels()Ljava/lang/Integer;
    .locals 1

    .line 395
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStorageSize()Ljava/lang/Long;
    .locals 1

    .line 322
    iget-object v0, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimezone()Ljava/util/TimeZone;
    .locals 1

    .line 379
    iget-object v0, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUsableMemory()Ljava/lang/Long;
    .locals 1

    .line 306
    iget-object v0, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 36

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    iget-object v2, v0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    iget-object v3, v0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    iget-object v5, v0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    iget-object v6, v0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    iget-object v7, v0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    iget-object v8, v0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    iget-object v9, v0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    iget-object v10, v0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    iget-object v11, v0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    iget-object v12, v0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    iget-object v13, v0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    iget-object v14, v0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    iget-object v15, v0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    move-object/from16 v18, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    move-object/from16 v20, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    move-object/from16 v23, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    move-object/from16 v25, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    move-object/from16 v26, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    move-object/from16 v31, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    move-object/from16 v32, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    move-object/from16 v33, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    move-object/from16 v35, v34

    move-object/from16 v34, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v35

    filled-new-array/range {v1 .. v34}, [Ljava/lang/Object;

    move-result-object v1

    .line 524
    invoke-static {v1}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 559
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, v0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 560
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isCharging()Ljava/lang/Boolean;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLowMemory()Ljava/lang/Boolean;
    .locals 1

    .line 314
    iget-object v0, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isOnline()Ljava/lang/Boolean;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSimulator()Ljava/lang/Boolean;
    .locals 1

    .line 282
    iget-object v0, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 630
    iget-object v0, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 633
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 634
    const-string v0, "manufacturer"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 636
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 637
    const-string v0, "brand"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 639
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 640
    const-string v0, "family"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 642
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 643
    const-string v0, "model"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 645
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 646
    const-string v0, "model_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 648
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 649
    const-string v0, "archs"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 651
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 652
    const-string v0, "battery_level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 654
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 655
    const-string v0, "charging"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 657
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 658
    const-string v0, "online"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 660
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    if-eqz v0, :cond_a

    .line 661
    const-string v0, "orientation"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 663
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 664
    const-string v0, "simulator"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 666
    :cond_b
    iget-object v0, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 667
    const-string v0, "memory_size"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 669
    :cond_c
    iget-object v0, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    if-eqz v0, :cond_d

    .line 670
    const-string v0, "free_memory"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 672
    :cond_d
    iget-object v0, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 673
    const-string v0, "usable_memory"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 675
    :cond_e
    iget-object v0, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 676
    const-string v0, "low_memory"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 678
    :cond_f
    iget-object v0, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    if-eqz v0, :cond_10

    .line 679
    const-string v0, "storage_size"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 681
    :cond_10
    iget-object v0, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 682
    const-string v0, "free_storage"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 684
    :cond_11
    iget-object v0, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 685
    const-string v0, "external_storage_size"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 687
    :cond_12
    iget-object v0, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    if-eqz v0, :cond_13

    .line 688
    const-string v0, "external_free_storage"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 690
    :cond_13
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 691
    const-string v0, "screen_width_pixels"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 693
    :cond_14
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 694
    const-string v0, "screen_height_pixels"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 696
    :cond_15
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 697
    const-string v0, "screen_density"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 699
    :cond_16
    iget-object v0, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 700
    const-string v0, "screen_dpi"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 702
    :cond_17
    iget-object v0, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    if-eqz v0, :cond_18

    .line 703
    const-string v0, "boot_time"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 705
    :cond_18
    iget-object v0, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_19

    .line 706
    const-string v0, "timezone"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 708
    :cond_19
    iget-object v0, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 709
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 711
    :cond_1a
    iget-object v0, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 712
    const-string v0, "connection_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 714
    :cond_1b
    iget-object v0, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 715
    const-string v0, "connection_effective_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 717
    :cond_1c
    iget-object v0, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    if-eqz v0, :cond_1d

    .line 718
    const-string v0, "battery_temperature"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 720
    :cond_1d
    iget-object v0, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 721
    const-string v0, "locale"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 723
    :cond_1e
    iget-object v0, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 724
    const-string v0, "processor_count"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 726
    :cond_1f
    iget-object v0, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    if-eqz v0, :cond_20

    .line 727
    const-string v0, "processor_frequency"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 729
    :cond_20
    iget-object v0, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 730
    const-string v0, "cpu_description"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 732
    :cond_21
    iget-object v0, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 733
    const-string v0, "chipset"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 735
    :cond_22
    iget-object v0, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_23

    .line 736
    iget-object v0, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 737
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 738
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 739
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 741
    :cond_23
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 742
    return-void
.end method

.method public setArchs([Ljava/lang/String;)V
    .locals 0
    .param p1, "archs"    # [Ljava/lang/String;

    .line 391
    iput-object p1, p0, Lio/sentry/protocol/Device;->archs:[Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setBatteryLevel(Ljava/lang/Float;)V
    .locals 0
    .param p1, "batteryLevel"    # Ljava/lang/Float;

    .line 254
    iput-object p1, p0, Lio/sentry/protocol/Device;->batteryLevel:Ljava/lang/Float;

    .line 255
    return-void
.end method

.method public setBatteryTemperature(Ljava/lang/Float;)V
    .locals 0
    .param p1, "batteryTemperature"    # Ljava/lang/Float;

    .line 445
    iput-object p1, p0, Lio/sentry/protocol/Device;->batteryTemperature:Ljava/lang/Float;

    .line 446
    return-void
.end method

.method public setBootTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "bootTime"    # Ljava/util/Date;

    .line 375
    iput-object p1, p0, Lio/sentry/protocol/Device;->bootTime:Ljava/util/Date;

    .line 376
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lio/sentry/protocol/Device;->brand:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setCharging(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "charging"    # Ljava/lang/Boolean;

    .line 262
    iput-object p1, p0, Lio/sentry/protocol/Device;->charging:Ljava/lang/Boolean;

    .line 263
    return-void
.end method

.method public setChipset(Ljava/lang/String;)V
    .locals 0
    .param p1, "chipset"    # Ljava/lang/String;

    .line 477
    iput-object p1, p0, Lio/sentry/protocol/Device;->chipset:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setConnectionEffectiveType(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectionEffectiveType"    # Ljava/lang/String;

    .line 437
    iput-object p1, p0, Lio/sentry/protocol/Device;->connectionEffectiveType:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectionType"    # Ljava/lang/String;

    .line 423
    iput-object p1, p0, Lio/sentry/protocol/Device;->connectionType:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setCpuDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuDescription"    # Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lio/sentry/protocol/Device;->cpuDescription:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setExternalFreeStorage(Ljava/lang/Long;)V
    .locals 0
    .param p1, "externalFreeStorage"    # Ljava/lang/Long;

    .line 350
    iput-object p1, p0, Lio/sentry/protocol/Device;->externalFreeStorage:Ljava/lang/Long;

    .line 351
    return-void
.end method

.method public setExternalStorageSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "externalStorageSize"    # Ljava/lang/Long;

    .line 342
    iput-object p1, p0, Lio/sentry/protocol/Device;->externalStorageSize:Ljava/lang/Long;

    .line 343
    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lio/sentry/protocol/Device;->family:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setFreeMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1, "freeMemory"    # Ljava/lang/Long;

    .line 302
    iput-object p1, p0, Lio/sentry/protocol/Device;->freeMemory:Ljava/lang/Long;

    .line 303
    return-void
.end method

.method public setFreeStorage(Ljava/lang/Long;)V
    .locals 0
    .param p1, "freeStorage"    # Ljava/lang/Long;

    .line 334
    iput-object p1, p0, Lio/sentry/protocol/Device;->freeStorage:Ljava/lang/Long;

    .line 335
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 415
    iput-object p1, p0, Lio/sentry/protocol/Device;->id:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .line 749
    iput-object p1, p0, Lio/sentry/protocol/Device;->locale:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public setLowMemory(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "lowMemory"    # Ljava/lang/Boolean;

    .line 318
    iput-object p1, p0, Lio/sentry/protocol/Device;->lowMemory:Ljava/lang/Boolean;

    .line 319
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lio/sentry/protocol/Device;->manufacturer:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setMemorySize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "memorySize"    # Ljava/lang/Long;

    .line 294
    iput-object p1, p0, Lio/sentry/protocol/Device;->memorySize:Ljava/lang/Long;

    .line 295
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lio/sentry/protocol/Device;->model:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setModelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelId"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lio/sentry/protocol/Device;->modelId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lio/sentry/protocol/Device;->name:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setOnline(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "online"    # Ljava/lang/Boolean;

    .line 270
    iput-object p1, p0, Lio/sentry/protocol/Device;->online:Ljava/lang/Boolean;

    .line 271
    return-void
.end method

.method public setOrientation(Lio/sentry/protocol/Device$DeviceOrientation;)V
    .locals 0
    .param p1, "orientation"    # Lio/sentry/protocol/Device$DeviceOrientation;

    .line 278
    iput-object p1, p0, Lio/sentry/protocol/Device;->orientation:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 279
    return-void
.end method

.method public setProcessorCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "processorCount"    # Ljava/lang/Integer;

    .line 453
    iput-object p1, p0, Lio/sentry/protocol/Device;->processorCount:Ljava/lang/Integer;

    .line 454
    return-void
.end method

.method public setProcessorFrequency(Ljava/lang/Double;)V
    .locals 0
    .param p1, "processorFrequency"    # Ljava/lang/Double;

    .line 461
    iput-object p1, p0, Lio/sentry/protocol/Device;->processorFrequency:Ljava/lang/Double;

    .line 462
    return-void
.end method

.method public setScreenDensity(Ljava/lang/Float;)V
    .locals 0
    .param p1, "screenDensity"    # Ljava/lang/Float;

    .line 358
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenDensity:Ljava/lang/Float;

    .line 359
    return-void
.end method

.method public setScreenDpi(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "screenDpi"    # Ljava/lang/Integer;

    .line 366
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenDpi:Ljava/lang/Integer;

    .line 367
    return-void
.end method

.method public setScreenHeightPixels(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "screenHeightPixels"    # Ljava/lang/Integer;

    .line 407
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenHeightPixels:Ljava/lang/Integer;

    .line 408
    return-void
.end method

.method public setScreenWidthPixels(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "screenWidthPixels"    # Ljava/lang/Integer;

    .line 399
    iput-object p1, p0, Lio/sentry/protocol/Device;->screenWidthPixels:Ljava/lang/Integer;

    .line 400
    return-void
.end method

.method public setSimulator(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "simulator"    # Ljava/lang/Boolean;

    .line 286
    iput-object p1, p0, Lio/sentry/protocol/Device;->simulator:Ljava/lang/Boolean;

    .line 287
    return-void
.end method

.method public setStorageSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "storageSize"    # Ljava/lang/Long;

    .line 326
    iput-object p1, p0, Lio/sentry/protocol/Device;->storageSize:Ljava/lang/Long;

    .line 327
    return-void
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .line 383
    iput-object p1, p0, Lio/sentry/protocol/Device;->timezone:Ljava/util/TimeZone;

    .line 384
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 760
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/Device;->unknown:Ljava/util/Map;

    .line 761
    return-void
.end method

.method public setUsableMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1, "usableMemory"    # Ljava/lang/Long;

    .line 310
    iput-object p1, p0, Lio/sentry/protocol/Device;->usableMemory:Ljava/lang/Long;

    .line 311
    return-void
.end method
