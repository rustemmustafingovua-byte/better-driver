.class public Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;
.super Ljava/lang/Object;
.source "LongUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 11
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
