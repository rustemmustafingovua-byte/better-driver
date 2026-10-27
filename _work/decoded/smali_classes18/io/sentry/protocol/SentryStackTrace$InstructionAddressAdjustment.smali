.class public final enum Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
.super Ljava/lang/Enum;
.source "SentryStackTrace.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstructionAddressAdjustment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

.field public static final enum ALL:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

.field public static final enum ALL_BUT_FIRST:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

.field public static final enum AUTO:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

.field public static final enum NONE:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;


# direct methods
.method private static synthetic $values()[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
    .locals 4

    .line 222
    sget-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->AUTO:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    sget-object v1, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->ALL:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    sget-object v2, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->ALL_BUT_FIRST:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    sget-object v3, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->NONE:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 223
    new-instance v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->AUTO:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 224
    new-instance v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->ALL:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 225
    new-instance v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    const-string v1, "ALL_BUT_FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->ALL_BUT_FIRST:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 226
    new-instance v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->NONE:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 222
    invoke-static {}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->$values()[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    move-result-object v0

    sput-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->$VALUES:[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 222
    const-class v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    return-object v0
.end method

.method public static values()[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
    .locals 1

    .line 222
    sget-object v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->$VALUES:[Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    invoke-virtual {v0}, [Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 232
    return-void
.end method
