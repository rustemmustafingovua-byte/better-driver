.class final Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
.super Ljava/lang/Object;
.source "AnrCulpritIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/anr/AnrCulpritIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StackTraceKey"
.end annotation


# instance fields
.field private final endIdx:I

.field private final hashCode:I

.field private final stack:[Ljava/lang/StackTraceElement;

.field private final startIdx:I


# direct methods
.method constructor <init>([Ljava/lang/StackTraceElement;II)V
    .locals 1
    .param p1, "stack"    # [Ljava/lang/StackTraceElement;
    .param p2, "startIdx"    # I
    .param p3, "endIdx"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->stack:[Ljava/lang/StackTraceElement;

    .line 42
    iput p2, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    .line 43
    iput p3, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->endIdx:I

    .line 44
    invoke-direct {p0}, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->computeHashCode()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->hashCode:I

    .line 45
    return-void
.end method

.method private computeHashCode()I
    .locals 4

    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "result":I
    iget v1, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->endIdx:I

    if-gt v1, v2, :cond_0

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->stack:[Ljava/lang/StackTraceElement;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 63
    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 66
    return v2

    .line 69
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;

    .line 71
    .local v1, "other":Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
    iget v3, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->hashCode:I

    iget v4, v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->hashCode:I

    if-eq v3, v4, :cond_2

    .line 72
    return v2

    .line 75
    :cond_2
    iget v3, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->endIdx:I

    iget v4, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 76
    .local v3, "length":I
    iget v4, v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->endIdx:I

    iget v5, v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 77
    .local v4, "otherLength":I
    if-eq v3, v4, :cond_3

    .line 78
    return v2

    .line 81
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 82
    iget-object v6, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->stack:[Ljava/lang/StackTraceElement;

    iget v7, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    iget-object v7, v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->stack:[Ljava/lang/StackTraceElement;

    iget v8, v1, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->startIdx:I

    add-int/2addr v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 83
    return v2

    .line 81
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v5    # "i":I
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget v0, p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;->hashCode:I

    return v0
.end method
