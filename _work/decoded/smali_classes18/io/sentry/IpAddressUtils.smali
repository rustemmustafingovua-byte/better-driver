.class public final Lio/sentry/IpAddressUtils;
.super Ljava/lang/Object;
.source "IpAddressUtils.java"


# static fields
.field public static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "{{auto}}"

.field private static final DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "{{auto}}"

    const-string v1, "{{ auto }}"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/IpAddressUtils;->DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefault(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipAddress"    # Ljava/lang/String;

    .line 17
    if-eqz p0, :cond_0

    sget-object v0, Lio/sentry/IpAddressUtils;->DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
