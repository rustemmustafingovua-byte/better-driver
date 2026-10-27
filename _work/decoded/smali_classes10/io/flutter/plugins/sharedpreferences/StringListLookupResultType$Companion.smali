.class public final Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;
.super Ljava/lang/Object;
.source "MessagesAsync.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessagesAsync.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessagesAsync.g.kt\nio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,579:1\n1401#2,2:580\n*S KotlinDebug\n*F\n+ 1 MessagesAsync.g.kt\nio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion\n*L\n204#1:580,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;",
        "",
        "<init>",
        "()V",
        "ofRaw",
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        "raw",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final ofRaw(I)Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 9
    .param p1, "raw"    # I

    .line 204
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    move-result-object v0

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 580
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    const/4 v7, 0x0

    .line 204
    .local v7, "$i$a$-firstOrNull-StringListLookupResultType$Companion$ofRaw$1":I
    invoke-virtual {v6}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->getRaw()I

    move-result v8

    if-ne v8, p1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    .line 580
    .end local v6    # "it":Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .end local v7    # "$i$a$-firstOrNull-StringListLookupResultType$Companion$ofRaw$1":I
    :goto_1
    if-eqz v8, :cond_1

    goto :goto_2

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    :cond_2
    const/4 v5, 0x0

    .line 204
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_2
    return-object v5
.end method
