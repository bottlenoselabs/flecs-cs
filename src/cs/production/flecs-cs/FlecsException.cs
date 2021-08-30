// Copyright (c) Lucas Girouard-Stranks (https://github.com/lithiumtoast). All rights reserved.
// Licensed under the MIT license. See LICENSE file in the Git repository root directory for full license information.

using System;

public class FlecsException : Exception
{
    public override string Message { get; }

    public FlecsException(string message)
    {
        Message = message;
    }
}
