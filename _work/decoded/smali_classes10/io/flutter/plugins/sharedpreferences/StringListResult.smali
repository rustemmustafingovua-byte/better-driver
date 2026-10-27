.class public final Lio/flutter/plugins/sharedpreferences/StringListResult;
.super Ljava/lang/Object;
.source "MessagesAsync.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rJ\u0014\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u0096\u0080\u0004J\n\u0010\u0013\u001a\u00020\u0003H\u0096\u0080\u0004J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/StringListResult;",
        "",
        "jsonEncodedValue",
        "",
        "type",
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        "<init>",
        "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V",
        "getJsonEncodedValue",
        "()Ljava/lang/String;",
        "getType",
        "()Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        "toList",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "component1",
        "component2",
        "copy",
        "Companion",
        "shared_preferences_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;


# instance fields
.field private final jsonEncodedValue:Ljava/lang/String;

.field private final type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListResult;->Companion:Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V
    .locals 1
    .param p1, "jsonEncodedValue"    # Ljava/lang/String;
    .param p2, "type"    # Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 253
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 253
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 255
    const/4 p1, 0x0

    .line 253
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V

    .line 258
    return-void
.end method

.method public static synthetic copy$default(Lio/flutter/plugins/sharedpreferences/StringListResult;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/StringListResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;->copy(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)Lio/flutter/plugins/sharedpreferences/StringListResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)Lio/flutter/plugins/sharedpreferences/StringListResult;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListResult;

    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 279
    return v1

    .line 281
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/flutter/plugins/sharedpreferences/StringListResult;

    .line 282
    .local v2, "other":Lio/flutter/plugins/sharedpreferences/StringListResult;
    sget-object v3, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    iget-object v4, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    iget-object v5, v2, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    sget-object v3, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    iget-object v4, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    iget-object v5, v2, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    invoke-virtual {v3, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 282
    :goto_0
    return v0

    .line 276
    .end local v2    # "other":Lio/flutter/plugins/sharedpreferences/StringListResult;
    :cond_3
    :goto_1
    return v0
.end method

.method public final getJsonEncodedValue()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 288
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 289
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    invoke-virtual {v2, v3}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 290
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 269
    nop

    .line 268
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 294
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StringListResult(jsonEncodedValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
